class InsuranceDatatable < AjaxDatatablesRails::ActiveRecord
  p "================================"
  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      name: { 
        source: "Insurance.name",
        cond: :like
      },
      address: {
        source: "Insurance.address",
        cond: :like 
      },
      code: {
        source: "Insurance.code",
        cond: :like 
      },
      dt_actions: { 
        searchable: false,
        orderable: false
       }
    }
  end

  def data
    records.map do |record|
      {
        name: record.name,
        address: record.address,
        code: record.code,
        dt_actions: record.code,
        DT_RowId: record.id
      }
    end
  end

  def get_raw_records
    # insert query here
    p "-------------------------"
    Insurance.all
    p "-------------------------"
  end

end
