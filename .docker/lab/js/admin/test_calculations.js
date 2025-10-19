document.addEventListener('DOMContentLoaded', function () {
    // Configuration object for test calculations
    const testCalculations = {
        'LIPID PROFILE': {
            calculatedFields: [
                {
                    field: 'L D L Cholesterol DIRECT',
                    inputs: ['Total Cholesterol', 'H D L Cholesterol', 'Triglycerides'],
                    calculate: (inputs) => {
                        const [total, hdl, triglycerides] = inputs.map(val => parseFloat(val) || null);
                        if (total !== null && hdl !== null && triglycerides !== null && triglycerides / 5 >= 0) {
                            const result = total - hdl - (triglycerides / 5);
                            return result >= 0 ? result.toFixed(2) : null;
                        }
                        return null;
                    },
                    errorMessage: 'Invalid calculation: LDL Cholesterol cannot be negative or inputs are invalid.'
                },
                {
                    field: 'VLDL Cholesterol',
                    inputs: ['Triglycerides'],
                    calculate: (inputs) => {
                        const triglycerides = parseFloat(inputs[0]) || null;
                        if (triglycerides !== null && triglycerides >= 0) {
                            return (triglycerides / 5).toFixed(2);
                        }
                        return null;
                    },
                    errorMessage: 'Invalid calculation: VLDL Cholesterol cannot be calculated.'
                },
                {
                    field: 'TCHOL/HDL Ratio',
                    inputs: ['Total Cholesterol', 'H D L Cholesterol'],
                    calculate: (inputs) => {
                        const [total, hdl] = inputs.map(val => parseFloat(val) || null);
                        if (total !== null && hdl !== null && hdl > 0) {
                            return (total / hdl).toFixed(2);
                        }
                        return null;
                    },
                    errorMessage: 'Invalid calculation: HDL Cholesterol must be greater than 0 for TCHOL/HDL Ratio.'
                },
                {
                    field: 'TCHOL/TGL Ratio',
                    inputs: ['Total Cholesterol', 'Triglycerides'],
                    calculate: (inputs) => {
                        const [total, triglycerides] = inputs.map(val => parseFloat(val) || null);
                        if (total !== null && triglycerides !== null && triglycerides > 0) {
                            return (total / triglycerides).toFixed(2);
                        }
                        return null;
                    },
                    errorMessage: 'Invalid calculation: Triglycerides must be greater than 0 for TCHOL/TGL Ratio.'
                },
                {
                    field: 'LDL/HDL Ratio',
                    inputs: ['L D L Cholesterol DIRECT', 'H D L Cholesterol'],
                    calculate: (inputs) => {
                        const [ldl, hdl] = inputs.map(val => parseFloat(val) || null);
                        if (ldl !== null && hdl !== null && hdl > 0) {
                            return (ldl / hdl).toFixed(2);
                        }
                        return null;
                    },
                    errorMessage: 'Invalid calculation: HDL Cholesterol must be greater than 0 for LDL/HDL Ratio.'
                }
            ]
        },
        'LIVER FUNCTION TEST - LFT': {
            calculatedFields: [
                {
                    field: 'IN-DIRECT BILIRUBIN',
                    inputs: ['TOTAL BILIRUBIN', 'DIRECT BILIRUBIN'],
                    calculate: (inputs) => {
                        const [total, direct] = inputs.map(val => {
                            if (val === null || val === undefined || val === '' || isNaN(parseFloat(val))) {
                                return null;
                            }
                            return parseFloat(val);
                        });
                        if (total !== null && direct !== null) {
                            return (total - direct).toFixed(2);
                        }
                        return null;
                    },
                    errorMessage: 'Invalid calculation: Indirect Bilirubin cannot be calculated.'
                },
                {
                    field: 'GLOBULIN',
                    inputs: ['TOTAL PROTEIN', 'ALBUMIN'],
                    calculate: (inputs) => {
                        const [totalProtein, albumin] = inputs.map(val => parseFloat(val) || null);
                        if (totalProtein !== null && albumin !== null) {
                            const result = totalProtein - albumin;
                            return result >= 0 ? result.toFixed(2) : null;
                        }
                        return null;
                    },
                    errorMessage: 'Invalid calculation: Globulin cannot be negative.'
                },
                {
                    field: 'Albumin / Globulin Ratio ( A/G )',
                    inputs: ['ALBUMIN', 'GLOBULIN'],
                    calculate: (inputs) => {
                        const [albumin, globulin] = inputs.map(val => parseFloat(val) || null);
                        if (albumin !== null && globulin !== null && globulin > 0) {
                            return (albumin / globulin).toFixed(2);
                        }
                        return null;
                    },
                    errorMessage: 'Invalid calculation: Globulin must be greater than 0 for A/G Ratio.'
                }
            ]
        },
        'Renal Function Test': {
            calculatedField: 'Creatinine Clearance',
            inputs: ['Creatinine'],
            calculate: (inputs, testId) => {
                const creatinine = parseFloat(inputs[0]) || null;
                const form = document.querySelector(`#test_${testId}`).querySelector('form');
                const age = parseFloat(form.getAttribute('data-patient-age')) || null;
                const weight = parseFloat(form.getAttribute('data-patient-weight')) || null;
                if (creatinine !== null && age !== null && weight !== null && creatinine > 0) {
                    const result = ((140 - age) * weight) / (72 * creatinine);
                    return result >= 0 ? result.toFixed(2) : null;
                }
                return null;
            },
            errorMessage: 'Invalid calculation: Creatinine Clearance cannot be calculated due to missing or invalid data.'
        },
        'BILIRUBIN': {
            calculatedFields: [
                {
                    field: 'Bilirubin - Indirect',
                    inputs: ['Bilirubin - Total', 'Bilirubin - Direct'],
                    calculate: (inputs) => {
                        const [total, direct] = inputs.map(val => {
                            if (val === null || val === undefined || val === '' || isNaN(parseFloat(val))) {
                                return null;
                            }
                            return parseFloat(val);
                        });
                        if (total !== null && direct !== null) {
                            return (total - direct).toFixed(2);
                        }
                        return null;
                    },
                    errorMessage: 'Invalid calculation: Indirect Bilirubin cannot be calculated.'
                }
            ]
        },
        'Complete Blood Picture - CBP': {
            differentialComponents: ['Neutrophils', 'Lymphocytes', 'Eosinophils', 'Monophils', 'Basophils'],
            inputComponents: ['Neutrophils', 'Lymphocytes', 'Eosinophils'],
            calculatedFields: [
                {
                    field: 'Monophils',
                    inputs: ['Neutrophils', 'Lymphocytes', 'Eosinophils'],
                    calculate: (inputs) => {
                        const [neutrophils, lymphocytes, eosinophils] = inputs.map(val => parseFloat(val) || 0);
                        const sum = neutrophils + lymphocytes + eosinophils;
                        if (sum >= 0) {
                            const result = 100 - sum;
                            return result >= 0 ? result.toString().padStart(2, '0') : null;
                        }
                        return null;
                    },
                    errorMessage: 'Invalid differential count: Neutrophils, Lymphocytes, and Eosinophils must sum to 92% or less.'
                },
                {
                    field: 'Basophils',
                    inputs: ['Neutrophils', 'Lymphocytes', 'Eosinophils', 'Monophils'],
                    calculate: (inputs) => {
                        const [neutrophils, lymphocytes, eosinophils, monocytes] = inputs.map(val => parseFloat(val) || 0);
                        const sum = neutrophils + lymphocytes + eosinophils + monocytes;
                        if (sum >= 0) {
                            const result = 100 - sum;
                            return result >= 0 ? result.toString().padStart(2, '0') : null;
                        }
                        return null;
                    },
                    errorMessage: 'Invalid differential count: Sum of components exceeds 100% or is invalid.'
                }
            ]
        }
    };

    // Function to update status based on reference ranges
    function updateStatus(field) {
        const normalFrom = parseFloat(field.getAttribute('normal_from'));
        const normalTo = parseFloat(field.getAttribute('normal_to'));
        const criticalLow = parseFloat(field.getAttribute('critical_low_from'));
        const criticalHigh = parseFloat(field.getAttribute('critical_high_from'));
        const value = parseFloat(field.value);

        const statusSelect = field.closest('tr').querySelector('select.status');
        if (statusSelect && !isNaN(value)) {
            let status = 'Normal';
            if (!isNaN(criticalLow) && value < criticalLow) {
                status = 'Critical low';
            } else if (!isNaN(criticalHigh) && value > criticalHigh) {
                status = 'Critical high';
            } else if (!isNaN(normalFrom) && !isNaN(normalTo)) {
                if (value < normalFrom) {
                    status = 'Low';
                } else if (value > normalTo) {
                    status = 'High';
                }
            }
            statusSelect.value = status;
        }
    }

    $('.od').summernote({
        tabsize: 4,
        height: 100,
        tooltip: true,
        dialogsFade: true,
    });

    // Select all input fields with data-calc-field attribute
    const calcFields = document.querySelectorAll('input[data-calc-field]');

    calcFields.forEach(field => {
        field.addEventListener('input', function () {
            const testId = this.getAttribute('data-test-id');
            const testName = this.getAttribute('data-calc-test');
            const fieldName = this.getAttribute('data-calc-field');

            // Check if the test has a calculation defined
            if (!testCalculations[testName]) {
                console.log(`No calculation defined for test: ${testName}`);
                return;
            }

            const calcConfig = testCalculations[testName];
            const testCalcFields = document.querySelectorAll(`input[data-test-id="${testId}"][data-calc-test="${testName}"]`);

            // Handle CBP differential count
            if (testName === 'Complete Blood Picture - CBP' && calcConfig.inputComponents.includes(fieldName)) {
                // Collect input values
                const inputValues = calcConfig.differentialComponents.map(comp => {
                    const inputField = Array.from(testCalcFields).find(f => f.getAttribute('data-calc-field') === comp);
                    return inputField ? (parseFloat(inputField.value) || 0) : 0;
                });

                // Perform calculations for Monophils and Basophils
                calcConfig.calculatedFields.forEach(calc => {
                    const calcField = Array.from(testCalcFields).find(f => f.getAttribute('data-calc-field') === calc.field);
                    if (calcField) {
                        const calcInputs = calc.inputs.map(inputName => {
                            const inputField = Array.from(testCalcFields).find(f => f.getAttribute('data-calc-field') === inputName);
                            return inputField ? inputField.value : null;
                        });
                        if (calcInputs.every(val => val !== null && val !== '')) {
                            const result = calc.calculate(calcInputs);
                            if (result !== null) {
                                calcField.value = result;
                                updateStatus(calcField);
                            } else {
                                calcField.value = '';
                                alert(calc.errorMessage);
                            }
                        } else {
                            calcField.value = '';
                            updateStatus(calcField);
                        }
                    }
                });
            }

            // Handle single calculatedField (Renal Function Test)
            if (calcConfig.calculatedField) {
                if (calcConfig.calculatedField === fieldName) {
                    updateStatus(this);
                    return;
                }

                const inputValues = calcConfig.inputs.map(inputName => {
                    const inputField = Array.from(testCalcFields).find(f => f.getAttribute('data-calc-field') === inputName);
                    return inputField ? inputField.value : null;
                });

                const calculatedField = Array.from(testCalcFields).find(f => f.getAttribute('data-calc-field') === calcConfig.calculatedField);

                if (inputValues.every(val => val !== null && val !== '') && calculatedField) {
                    const result = calcConfig.calculate(inputValues, testId);
                    if (result !== null) {
                        calculatedField.value = result;
                        updateStatus(calculatedField);
                    } else {
                        calculatedField.value = '';
                        alert(calcConfig.errorMessage);
                    }
                } else if (calculatedField) {
                    calculatedField.value = '';
                    updateStatus(calculatedField);
                }
            }

            // Handle multiple calculatedFields (LIPID PROFILE, LFT, BILIRUBIN)
            if (calcConfig.calculatedFields) {
                calcConfig.calculatedFields.forEach(calc => {
                    if (calc.field === fieldName) {
                        updateStatus(this);
                        return;
                    }

                    const inputValues = calc.inputs.map(inputName => {
                        const inputField = Array.from(testCalcFields).find(f => f.getAttribute('data-calc-field') === inputName);
                        return inputField ? inputField.value : null;
                    });

                    const calculatedField = Array.from(testCalcFields).find(f => f.getAttribute('data-calc-field') === calc.field);

                    if (inputValues.every(val => val !== null && val !== '') && calculatedField) {
                        const result = calc.calculate(inputValues, testId);
                        if (result !== null) {
                            calculatedField.value = result;
                            updateStatus(calculatedField);
                        } else {
                            calculatedField.value = '';
                            alert(calc.errorMessage);
                        }
                    } else if (calculatedField) {
                        calculatedField.value = '';
                        updateStatus(calculatedField);
                    }
                });
            }

            // Update status for the current field
            updateStatus(this);
        });
    });

    // Form validation to allow submission if calculated fields are empty when inputs are not provided
    document.querySelectorAll('form').forEach(form => {
        form.addEventListener('submit', function (e) {
            const calcFields = form.querySelectorAll('input[data-calc-field]');
            for (let field of calcFields) {
                const calcTest = field.getAttribute('data-calc-test');
                const fieldName = field.getAttribute('data-calc-field');
                const calcConfig = testCalculations[calcTest];

                // Handle CBP differential count validation
                if (calcTest === 'Complete Blood Picture - CBP' && calcConfig.differentialComponents.includes(fieldName)) {
                    const testId = field.getAttribute('data-test-id');
                    const testCalcFields = document.querySelectorAll(`input[data-test-id="${testId}"][data-calc-test="${calcTest}"]`);
                    const inputSum = calcConfig.inputComponents.reduce((acc, comp) => {
                        const inputField = Array.from(testCalcFields).find(f => f.getAttribute('data-calc-field') === comp);
                        return acc + (inputField && inputField.value ? parseFloat(inputField.value) || 0 : 0);
                    }, 0);

                    // Only validate sum if at least one input is provided
                    if (inputSum > 0) {
                        const sum = calcConfig.differentialComponents.reduce((acc, comp) => {
                            const inputField = Array.from(testCalcFields).find(f => f.getAttribute('data-calc-field') === comp);
                            return acc + (inputField && inputField.value ? parseFloat(inputField.value) || 0 : 0);
                        }, 0);
                        if (Math.abs(sum - 100) > 0.01) {
                            alert('Invalid differential count: All components must sum to 100%.');
                            e.preventDefault();
                            return;
                        }
                    }
                }

                // Handle single calculated field (Renal Function Test)
                if (calcConfig?.calculatedField === fieldName) {
                    const inputValues = calcConfig.inputs.map(inputName => {
                        const inputField = Array.from(form.querySelectorAll(`input[data-calc-field="${inputName}"]`)).find(f => f.getAttribute('data-test-id') === field.getAttribute('data-test-id'));
                        return inputField ? inputField.value : null;
                    });
                    // Only block submission if inputs are provided but calculation fails
                    if (inputValues.every(val => val !== null && val !== '') && field.value === '') {
                        alert(calcConfig.errorMessage || 'Please ensure all inputs for calculations are filled correctly.');
                        e.preventDefault();
                        return;
                    }
                }

                // Handle multiple calculated fields (LIPID PROFILE, LFT, BILIRUBIN)
                if (calcConfig?.calculatedFields) {
                    const calcFieldConfig = calcConfig.calculatedFields.find(calc => calc.field === fieldName);
                    if (calcFieldConfig) {
                        const inputValues = calcFieldConfig.inputs.map(inputName => {
                            const inputField = Array.from(form.querySelectorAll(`input[data-calc-field="${inputName}"]`)).find(f => f.getAttribute('data-test-id') === field.getAttribute('data-test-id'));
                            return inputField ? inputField.value : null;
                        });
                        // Only block submission if inputs are provided but calculation fails
                        if (inputValues.every(val => val !== null && val !== '') && field.value === '') {
                            alert(calcFieldConfig.errorMessage || 'Please ensure all inputs for calculations are filled correctly.');
                            e.preventDefault();
                            return;
                        }
                    }
                }
            }
        });
    });

    // Initialize status for existing values
    document.querySelectorAll('input.test_result').forEach(field => {
        if (field.value) {
            updateStatus(field);
        }
    });
});