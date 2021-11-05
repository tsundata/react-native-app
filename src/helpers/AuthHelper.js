export const getHeaders = async () => {
  try {
    let token = 'demo'; // todo
    return {
      headers: {Authorization: `Bearer ${token}`},
    };
  } catch (e) {}
};
