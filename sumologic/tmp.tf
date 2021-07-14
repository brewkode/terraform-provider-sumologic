trigger_conditions {
  static_condition {
    field           = "_count"
    time_range      = "15m"
    trigger_source  = "AllResults"
    occurrence_type = "ResultCount"

    critical {
      alert {
        threshold      = 100
        threshold_type = "GreaterThan"
      }

      resolution {
        threshold      = 90
        threshold_type = "LessThanOrEqual"
      }
    }

    warning {
      alert {
        threshold      = 80
        threshold_type = "GreaterThan"
      }

      resolution {
        threshold      = 75
        threshold_type = "LessThanOrEqual"
      }
    }
  }

  logs_missing_data_condition {
    time_range = "30m"
  }
}