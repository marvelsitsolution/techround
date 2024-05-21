<x-app-layout>

        <div class="content" >
            <div class="row">
                <div class="col-md-12">
                    <div class="quicklink-sidebar-menu ctm-border-radius shadow-sm bg-white card grow">
                        <div class="card-body">
                        <h5 class="card-title mb-0 d-inline-block"> Add New Contact</h5>
                        </div>
                    </div>  
                     <div class="card">
                       <div class="card-body">
                         <x-form id="save-group-form">
                                    <div class="col-md-12">
                                         <div class="row">
                                            <div class="col-md-4">
                                                <x-forms.text class="mr-0 mr-lg-2 mr-md-2" fieldLabel="Group Name"
                                                fieldPlaceholder="Group Name" fieldRequired="true" fieldName="name"
                                                fieldValue="{{$group->name}}"
                                                fieldId="name"  />

                                               </div>
                                            <div class="col-md-8">

                                                @foreach($contact as $c)

                                                    <input type="checkbox" name="contact[]"  value="{{$c->id }}" />
                                                    <label>{{$c->name}}</label>
                                                @endforeach

                                            </div>
                                            <div class="col-md-3">
                                                
                                               
                                                <input type = "hidden" name= "id" id ="id" value="{{$group->id}}"/>
                             
                                            </div>
                                          </div>
                                    </div>
                                     
                                        <div class="row">
                                <div class="col-md-12">

                                    <div class="col-lg-6 text-end">
                                        <button type="button" class="btn btn-primary ctm-border-radius text-white button-1 mr-1 text-end" id="save-form">Save</button>
                                        <button type="button" class="btn btn-danger text-white ctm-border-radius text-end">Cancel</button>
                                          
                                     </div>
                                </div>
                            </div>
                                  
                          </x-form>

                       </div>
                    </div>
                </div>
            </div>
    </div>
     

<script>

    $(document).ready(function () {

        $('#save-form').click(function () {

            const url = "{{ route('group.store') }}";

            $.ajax({
                url: url,
                container: '#save-group-form',
                type: "POST",
                disableButton: true,
                blockUI: true,
                buttonSelector: "#save-form",
                data:  $('#save-group-form').serialize(),

                success: function (response) {
                    if (response.status === 'success') {
                        var url = window.location.host + response.redirect;
                        window.location.href = response.redirect;
                        }
                    }

            });
        });



    });

     
</script>
</x-app-layout>