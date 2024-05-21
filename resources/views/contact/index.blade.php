<x-app-layout>

    <div class="row" style="transform: none;">
  
        <div class="col-md-12">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card shadow-sm ctm-border-radius ">
                        <div class="card-header d-flex justify-content-between">
                            <h4 class="card-title mb-0 d-inline-block">Contact List</h4>
                            
                            <div class="text-end">
                                <a  href="{{ route('contact.importindex')}}" class="btn btn-secondary button-1 ctm-border-radius text-white text-end">Import</a>
                                <a  href="{{ route('contact.create')}}" class="btn btn-primary button-1 ctm-border-radius text-white text-end">Add New</a>
                            </div>
                        </div>
                    </div>
                        <div class="card mt-4">
                          <div class="card-body">
                                {!! $dataTable->table(['class' => 'table table-bordered']) !!}
                                
                           </div>
                        
                        </div>
                </div>
            </div>
        </div>
    </div>
@include('sections.datatable_css')
@include('sections.datatable_js')

{!! $dataTable->scripts() !!}

<script type="text/javascript">
jQuery(function () {
    jQuery.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': '{{csrf_token()}}'
        }
    });
    
    
 
   jQuery(document).on("click", "button.contact_delete_alert", function () {
        if (confirm("Are you sure, you want to delete?"))
            jQuery(this).parent().submit();
    });
});
</script>
</x-app-layout>
