"use Server";

export async function loginUserAction(formData){
    const details={
        'email':formData.get('email'),
        'password':formData.get('password')
    }
}
