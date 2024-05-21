<?php

namespace App\DataTables;

use App\Models\Contacts;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Html\Editor\Editor;
use Yajra\DataTables\Html\Editor\Fields;
use Yajra\DataTables\Services\DataTable;

class ContactsDataTable extends DataTable
{
    /**
     * Build the DataTable class.
     *
     * @param QueryBuilder $query Results from query() method.
     */
    public function dataTable($query): EloquentDataTable
    {
        return (new EloquentDataTable($query))
            ->addColumn('action', function($row) {

                $return = '';
                
                $edit = '<a href="/contact/edit/' . $row->id . '"><button type="button" class="btn btn-sm btn-success btn-out-dotted" style="display:inline">Edit</button></a>';
                $delete = '<form method="POST" action="/contact/delete/' . $row->id . '" accept-charset="UTF-8" class="delete" style="display:inline">
                                        ' . csrf_field() . '
                                        <input name="_method" value="DELETE" type="hidden">
                                        <button type="button" class="btn btn-danger btn-out-dotted btn-sm contact_delete_alert">Delete</button>
                                    </form>';
                
                $return .= $edit ;
                $return .= $delete;
                return $return;

            })
            ->rawColumns(['action'])
            ->addIndexColumn();
    }

    /**
     * Get the query source of dataTable.
     */
    public function query(Contacts $model): QueryBuilder
    {
        return $model->newQuery();
    }

    /**
     * Optional method if you want to use the html builder.
     */
    public function html(): HtmlBuilder
    {
        return $this->builder()
                    ->setTableId('contacts-table')
                    ->columns($this->getColumns())
                    ->minifiedAjax()
                    ->responsive(false)
                    ->dom('Bfrtip')
                    
                    ->selectStyleSingle()
                    ->buttons([
                        Button::make('excel'),
                        Button::make('csv'),
                        Button::make('pdf')
                    ]);
    }

    /**
     * Get the dataTable columns definition.
     */
    public function getColumns(): array
    {
        return [
            '#' => ['data' => 'DT_RowIndex', 'orderable' => false, 'searchable' => false, 'visible' => true, 'title' => 'Sr No.', 'class' => 'w-10'],
            
            Column::make('name'),
            Column::make('phone'),
            Column::make('email')
                    ->width(60),
            Column::computed('action')
                  ->exportable(false)
                  ->printable(false)
                  ->width(100)
                  ->addClass('text-center'),
        ];
    }

    /**
     * Get the filename for export.
     */
    protected function filename(): string
    {
        return 'Contacts_' . date('YmdHis');
    }
}
