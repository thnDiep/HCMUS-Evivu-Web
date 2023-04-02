import React from 'react';
import RatingCheckboxList from '../RatingCheckboxList/RatingCheckboxList';

const ratingValues = [
    { id: 5, value: '9', label: 'Tuyệt vời (9.0+)' },
    { id: 6, value: '8', label: 'Rất tốt (8.0+)' },
    { id: 7, value: '7', label: 'Tốt (7.0+)' }
];


function UserRate() {
    return (
        <RatingCheckboxList data={ratingValues} />
    );
}

export default UserRate;
