<div class="modal fade" id="patient_modal" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">{{__('Create Patient')}}</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <form action="{{route('ajax.create_patient')}}" method="POST" id="create_patient">
        @csrf
        <div class="text-danger" id="patient_modal_error"></div>
        <div class="modal-body" id="create_patient_inputs">
          <div class="row">
            <div class="col-lg-4">
              <div class="form-group">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <select class="custom-select" id="title_select">
                      <option value="" selected disabled>{{__('Select Title')}}</option>
                      <option value="Mr">{{__('Mr')}}</option>
                      <option value="Miss">{{__('Miss')}}</option>
                      <option value="Ms">{{__('Ms')}}</option>
                      <option value="Ms">{{__('Mrs')}}</option>
                      <option value="Baby of">{{__('Baby of')}}</option>
                      <option value="New born">{{__('New born')}}</option>
                      <option value="Baby">{{__('Baby')}}</option>
                    </select>
                  </div>
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">
                      <i class="fa fa-user"></i>
                    </span>
                  </div>
                  <input type="text" class="form-control" placeholder="{{__('Patient Name')}}" name="name"
                    id="create_name" required>
                </div>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="form-group">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">
                      <i class="fas fa-globe"></i>
                    </span>
                  </div>
                  <select class="form-control" name="country_id" id="create_country_id">
                    <option value="" disabled selected>{{__('Select nationality')}}</option>
                  </select>
                </div>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="form-group">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">
                      <i class="fa fa-id-card"></i>
                    </span>
                  </div>
                  <input type="text" class="form-control" placeholder="{{__('National ID')}}" name="national_id"
                    id="create_national_id">
                </div>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="form-group">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">
                      <i class="fa fa-passport"></i>
                    </span>
                  </div>
                  <input type="text" class="form-control" placeholder="{{__('Passport no')}}" name="passport_no"
                    id="create_passport_no">
                </div>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="form-group">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">
                      <i class="fas fa-envelope"></i>
                    </span>
                  </div>
                  <input type="email" class="form-control" placeholder="{{__('Email Address')}}" name="email"
                    id="create_email">
                </div>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="form-group">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">
                      <i class="fas fa-phone-alt"></i>
                    </span>
                  </div>
                  <input type="text" class="form-control" placeholder="{{__('Phone number')}}" name="phone"
                    id="create_phone">
                </div>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="form-group">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">
                      <i class="fas fa-map-marker-alt"></i>
                    </span>
                  </div>
                  <input type="text" class="form-control" placeholder="{{__('Address')}}" name="address"
                    id="create_address">
                </div>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="form-group">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">
                      <i class="fas fa-mars"></i>
                    </span>
                  </div>
                  <select class="form-control" name="gender" id="create_gender" required>
                    <option value="" disabled selected>{{__('Select Gender')}}</option>
                    <option value="male">{{__('Male')}}</option>
                    <option value="female">{{__('Female')}}</option>
                  </select>
                </div>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="form-group">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">
                      <i class="fas fa-baby"></i>
                    </span>
                  </div>
                  <input type="text" class="form-control datepicker" placeholder="{{__('Date of birth')}}" name="dob"
                    id="create_dob" required>
                </div>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="row">
                <div class="col-lg-6 col-sm-6 col-xs-6 col-md-6 pr-0">
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">
                        <i class="fas fa-baby"></i>
                      </span>
                    </div>
                    <input type="number" class="form-control" name="age" id="create_age" placeholder="{{__('Age')}}"
                      required>
                  </div>
                </div>
                <div class="col-lg-6 col-sm-6 col-xs-6 col-md-6 pl-0">
                  <div class="input-group mb-3">
                    <select class="form-control" name="age_unit" id="create_age_unit" required>
                      <option value="" disabled selected>{{__('Select age unit')}}</option>
                      <option value="years">{{__('Years')}}</option>
                      <option value="months">{{__('Months')}}</option>
                      <option value="days">{{__('Days')}}</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="form-group">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1">
                      <i class="fas fa-file-contract"></i>
                    </span>
                  </div>
                  <select name="contract_id" id="patient_contract_id" class="form-control">
                    <option value="" selected disabled>{{__('Select contract')}}</option>
                  </select>
                </div>
              </div>
            </div>

            <div class="col-lg-4">
              <div class="form-group">
                <div class="input-group">
                  <div class="custom-file">
                    <input type="file" class="custom-file-input" id="create_avatar">
                    <input type="hidden" id="create_patient_avatar_hidden" name="avatar">
                    <label class="custom-file-label">{{__('Choose avatar')}}</label>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer justify-content-between">
          <button type="button" class="btn btn-danger" data-dismiss="modal">{{__('Close')}}</button>
          <button type="submit" class="btn btn-primary">{{__('Save')}}</button>
        </div>
      </form>
    </div>
    <!-- /.modal-content -->
  </div>
    <!-- /.modal-dialog -->
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const titleSelect = document.getElementById('title_select');
  const nameInput = document.getElementById('create_name');
  const genderSelect = document.getElementById('create_gender');create_age_unit
  const ageUnit = document.getElementById('create_age_unit');

  // Handle title selection and prepend to name input
  titleSelect.addEventListener('change', function() {
    const title = this.value;
    let currentValue = nameInput.value.trim();

    // Remove any existing title from the input value
    const titles = ['Mr', 'Miss', 'Ms', 'Baby of', 'New born','Mrs', 'Baby'];
    titles.forEach(t => {
      if (currentValue.startsWith(t + ' ')) {
        currentValue = currentValue.substring(t.length + 1);
      }
    });

    // Add new title if one is selected
    if (title) {
      nameInput.value = title + ' ' + currentValue;
    } else {
      nameInput.value = currentValue;
    }

    // Automate gender based on title
    if (title === 'Mr') {
      genderSelect.value = 'male';
      ageUnit.value= 'years';
    } else if (title === 'Miss' || title === 'Ms' ||  title === 'Mrs' ||  title === 'Baby') {
      genderSelect.value = 'female';
      ageUnit.value= 'years';
    }
    else {
      // For 'Baby of' or 'New born', leave gender as is or reset to default
      if (!genderSelect.value) {
        genderSelect.value = '';
      }
    }
    if ( title === 'Baby of' || title === 'Baby') {
        ageUnit.value= 'months';
        genderSelect.value = '';
    
    }else if (title === 'New born' ) {
        ageUnit.value= 'days';
        genderSelect.value = '';
    }
    
    
  });

  // Handle manual input to maintain title
  nameInput.addEventListener('input', function() {
    const selectedTitle = titleSelect.value;
    let inputValue = this.value.trim();

    // Ensure the selected title remains prepended if applicable
    if (selectedTitle && !inputValue.startsWith(selectedTitle + ' ')) {
      const titles = ['Mr', 'Miss', 'Ms', 'Baby of', 'New born','Mrs', 'Baby'];
      titles.forEach(t => {
        if (inputValue.startsWith(t + ' ')) {
          inputValue = inputValue.substring(t.length + 1);
        }
      });
      this.value = selectedTitle + ' ' + inputValue;
    }
  });

  // Reset form fields when modal is closed
  document.getElementById('patient_modal').addEventListener('hidden.bs.modal', function() {
    titleSelect.value = '';
    nameInput.value = '';
    genderSelect.value = '';
  });
});
</script>