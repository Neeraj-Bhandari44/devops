# import pytest
# import sys
# sys.path.insert(0, 'E:\\devops assignment')  # Adjust the path as per your actual directory structure

# from app import app


# @pytest.fixture
# def client():
#     """Create a test client for the app."""
#     return app.test_client()

# def test_index(client):
#     """Test the index route."""
#     response = client.get('/')
#     assert response.status_code == 200
#     assert b'Welcome to My Flask App!' in response.data
from App.app import app
import pytest

@pytest.fixture
def client():
    """Create a test client for the app."""
    return app.test_client()

def test_index(client):
    """Test the index route."""
    rv = client.get('/')
    assert rv.data == b'Hello, World!'

