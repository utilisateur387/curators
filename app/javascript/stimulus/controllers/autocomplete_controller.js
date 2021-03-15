import { Controller } from "stimulus";
import axios from "axios";
import autocomplete from "autocomplete.js";
import Mustache from "mustache";

export default class extends Controller {
  static targets = ["field", "suggestionTemplate"];

  source() {
    const url = this.data.get("url");
    return (query, callback) => {
      axios.get(url, { params: { query } }).then((response) => {
        callback(response.data);
      });
    };
  }

  connect() {
    const suggestionTemplate = this.suggestionTemplateTarget.innerHTML;

    this.ac = autocomplete(this.fieldTarget, { hint: false }, [
      {
        source: this.source(),
        debounce: 200,
        templates: {
          suggestion: (suggestion) => {
            return Mustache.render(suggestionTemplate, suggestion);
          },
        },
      },
    ]).on("autocomplete:selected", (event, suggestion, dataset, context) => {
      this.ac.autocomplete.setVal(suggestion.name);
    });
  }
}
