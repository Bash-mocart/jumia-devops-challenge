import React, { useState, useEffect ***REMOVED*** from "react";
import CustomerService from "../services/CustomerService";

const CustomerList = () => {
  const [customers, setCustomers] = useState([]);
  const [country, setCountry] = useState("");
  const [state, setState] = useState("");

  const onChangeCountry = (e) => {
    const country = e.target.value;
    setCountry(country);
  ***REMOVED***;

  const onChangeState = (e) => {
    const state = e.target.value;
    setState(state);
  ***REMOVED***;

  const getRequestParams = (country, state) => {
    let params = {***REMOVED***;
    if (country) {
      params["country"] = country;
    ***REMOVED***
    if (state) {
      params["state"] = state;
    ***REMOVED***
    return params;
  ***REMOVED***;

  const retrieveCustomers = () => {
    const params = getRequestParams(country, state);
    CustomerService.getAll(params)
      .then((response) => {
        setCustomers(response.data);
        console.log(customers);
      ***REMOVED***)
      .catch((e) => {
        console.log(e);
      ***REMOVED***);
  ***REMOVED***;

  useEffect(retrieveCustomers, []);

  return (
    <div className="list row">
      <div className="col-md-8">
        <div className="input-group mb-3">
          <select value={state***REMOVED*** onChange={onChangeState***REMOVED***>
            <option value="">ALL</option>
            <option value="VALID">Valid</option>
            <option value="INVALID">Invalid</option>
          </select>
          <select value={country***REMOVED*** onChange={onChangeCountry***REMOVED***>
            <option value="">ALL</option>
            <option value="CAMEROON">Cameroon</option>
            <option value="ETHIOPIA">Ethiopia</option>
            <option value="MOROCCO">Morocco</option>
            <option value="MOZAMBIQUE">Mozambique</option>
            <option value="UGANDA">Uganda</option>
          </select>
          <div className="input-group-append">
            <button
              className="btn btn-outline-secondary"
              type="button"
              onClick={retrieveCustomers***REMOVED***
            >
              Add filter
            </button>
          </div>
        </div>
      </div>
      <div>
        <table className="table">
          <thead>
            <tr>
              <th>Id</th>
              <th>Name</th>
              <th>Phone</th>
              <th>Country</th>
              <th>Phone validation</th>
            </tr>
          </thead>
          <tbody>
            {customers.map((customer) => (
              <tr key={customer.id***REMOVED***>
                <td>{customer.id***REMOVED***</td>
                <td>{customer.name***REMOVED***</td>
                <td>{customer.phone***REMOVED***</td>
                <td>{customer.country***REMOVED***</td>
                <td>{customer.phoneNumberState***REMOVED***</td>
              </tr>
            ))***REMOVED***
          </tbody>
        </table>
      </div>
    </div>
  );
***REMOVED***;

export default CustomerList;
