import React from 'react';
import {StyleSheet, View, ActivityIndicator, Dimensions} from 'react-native';

var ScreenWidth = Dimensions.get('window').width;
var ScreenHeight = Dimensions.get('window').height;
export class FwdLoading extends React.Component {
    static defaultProps = {
        isLoading:false
    };
    constructor(props){
        super(props);
        this.state = {
            isLoading:this.props.isLoading
        };
    }
    componentWillReceiveProps(nextProps){
        this.setState({ isLoading: nextProps.isLoading });
    }
    render() {
        const {isLoading} = this.state;
        const {style} = this.props;
        return (
            <View>
                {
                    isLoading &&(
                        <ActivityIndicator
                            color='red'
                            size="large"
                            animating={isLoading}
                            style={[styles.centering,style]} />
                    )
                }
            </View>
        );
    }
}

const styles = StyleSheet.create({
    // centering: {
    //     position:'absolute',
    //     top:200,
    //     left:(ScreenWidth-36)/2,
    //     justifyContent: 'center',
    //     alignItems: 'center',
    // },
    centering: {
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor:'#FBFBFB'
    },
});

