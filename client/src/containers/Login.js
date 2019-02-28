import React from 'react'
import { Form, Button, Col } from 'react-bootstrap'

class Login extends React.Component {
    constructor(){
        super()
        this.state={
            email: '',
            password: '',
        }
    }

    render(){
        return(
            <div>
                <Form className="login-form" onSubmit="handleOnSubmit">
                    <Form.Group as={Col} md="4" controlId="formGridEmail">
                        <Form.Label>Email</Form.Label>
                        <Form.Control name="email" onChange={this.handleOnChange} type="email" placeholder="Enter email" value={this.state.email} />
                        <Form.Text className="text-muted">
                        We'll never share your email with anyone else.
                        </Form.Text>
                    </Form.Group>

                    <Form.Group as={Col} md="4" controlId="formGridPassword">
                        <Form.Label>Password</Form.Label>
                        <Form.Control name="password" onChange={this.handleOnChange }type="password" placeholder="Password" value={this.state.password} />
                    </Form.Group>
                    <Button className="login-btn" variant="primary" type="submit">
                        Login
                    </Button>
                </Form>
            </div>
        )
    }
}

export default Login