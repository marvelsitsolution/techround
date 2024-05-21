<x-app-layout>

    <div class="row" style="transform: none;">
  
        <div class="col-md-12">
            <div class="row">
                <div class="col-sm-12">
                    <x-form id="save-import-form">
                        <div class="card mt-4">
                            <div class="card-body">
                                <div class="row">

                                    <div class="col-md-3">
                                        <x-forms.label class="my-3" fieldId="contact-import"
                                        fieldLabel="Upload Your File "></x-forms.label>
                                        
                                        <input type="file" class="mr-0 mr-lg-2 mr-md-2 cropper" id="contact-import" name="contact-import" data-allowed-file-extensions="csv" />

                                    </div>
                                    <div class="col-md-3">
                                        
                                        <button type="button" id="save-form" class="btn btn-primary ctm-border-radius text-white button-1 mr-1 text-end mt-5" >Import CSV</button>
                                        
                                    </div>
                                </div>
                        
                            </div>
                        </div>
                    </x-form>
                </div>
            </div>
        </div>
    </div>


<script>

    $(document).ready(function () {

        $('#save-form').click(function () {

            
            const url = "{{ route('contact.importfile') }}";
            var form = document.getElementById('save-import-form');
             
            var data = new FormData(form);

            $.ajax({
                url: url,
                container: '#save-import-form',
                type: "POST",
                disableButton: true,
                blockUI: true,
                buttonSelector: "#save-form",
                file: true,
                data:  data,
                processData: false,
                contentType: false,

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
