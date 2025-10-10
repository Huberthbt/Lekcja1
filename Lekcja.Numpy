{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyP8Gtgz8KFacCZgUfaOtJml",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/Huberthbt/Lekcja1/blob/main/Lekcja.Numpy\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "hWJpXdAu8vF5",
        "outputId": "0bb390a3-a2d8-4a54-c079-7363a770d2d0"
      },
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Python 3.12.11\n"
          ]
        }
      ],
      "source": [
        "!python --version\n",
        "!pip freeze"
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "\n",
        "import numpy as np\n",
        "\n",
        "array = np.array([1,2,3,4,5,6,7,8,9,10,11,12])\n",
        "print(array)\n",
        "print(np.shape(array))\n",
        "\n",
        "array2x6 = array.reshape(2,6)\n",
        "print(array2x6)\n",
        "print(np.shape(array2x6))\n",
        "\n",
        "\n",
        "array2x2x3= array.reshape(2,2,3)\n",
        "print(array2x2x3)\n",
        "print(np.shape(array2x2x3))\n",
        "\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "POzCQmTK_dLP",
        "outputId": "2b6e8f97-ad9d-4d6e-b02c-06225796f760"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "[ 1  2  3  4  5  6  7  8  9 10 11 12]\n",
            "(12,)\n",
            "[[ 1  2  3  4  5  6]\n",
            " [ 7  8  9 10 11 12]]\n",
            "(2, 6)\n",
            "[[[ 1  2  3]\n",
            "  [ 4  5  6]]\n",
            "\n",
            " [[ 7  8  9]\n",
            "  [10 11 12]]]\n",
            "(2, 2, 3)\n"
          ]
        }
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "unsorted = np.array([5,67,-20,90,-7,1])\n",
        "print(unsorted)\n",
        "\n",
        "sorted = np.sort(unsorted)\n",
        "print(sorted)\n",
        "\n",
        "unsorted = np.array([5,67,-20,90,-7,1])\n",
        "print(unsorted)\n",
        "\n",
        "sorted = np.sort(unsorted)[::-1]\n",
        "print(sorted)"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "MEqzR69pFMpl",
        "outputId": "67e6cab4-57c7-43e6-c6b8-0ddba6131876"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "[  5  67 -20  90  -7   1]\n",
            "[-20  -7   1   5  67  90]\n"
          ]
        }
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "from numpy import random\n",
        "for i in range(10):\n",
        "  print(random.rand() * 2 -1)"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "FO70WoutKn4V",
        "outputId": "4c67687d-7185-4bff-b430-dbcfb62f0397"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "-0.9314484104253231\n",
            "0.516797885294922\n",
            "0.665449281753975\n",
            "0.5516266246749586\n",
            "0.8286760832140578\n",
            "-0.7801194956159783\n",
            "-0.594023965830236\n",
            "0.3417079318970131\n",
            "0.6333085878107503\n",
            "0.02368971245282414\n"
          ]
        }
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "dates = [1562,2106,599,775,1992]\n",
        "print(random.choice(dates))\n",
        "print(random.choce(dates, 3))\n",
        "\n",
        "random.shuffle(dates)\n",
        "print(dates)"
      ],
      "metadata": {
        "id": "y718Ez04NDiN"
      },
      "execution_count": null,
      "outputs": []
    },
    {
      "cell_type": "code",
      "source": [
        "array1D = np.array([1,2,3,4,5,6,7,8,9])\n",
        "\n",
        "print(array1D[2:5])\n",
        "print(array1D[:5])\n",
        "print(array1D[5:])\n",
        "print(array1D[-3:-1])\n"
      ],
      "metadata": {
        "id": "T754NeeLOrV8"
      },
      "execution_count": null,
      "outputs": []
    },
    {
      "cell_type": "code",
      "source": [
        "array2D = np.array([[7, 2, 9],\n",
        "              [4, 8, 1],\n",
        "              [5, 6, 3]])\n",
        "for row in array2D:\n",
        " for num in row:\n",
        "   print(num)\n",
        "\n",
        "for i in np.nditer(array2D):\n",
        "  print(i)"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "3XyrOW_kQFWn",
        "outputId": "c1bb29ef-29cd-4a2c-86fe-a97d4273e8cd"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "7\n",
            "2\n",
            "9\n",
            "4\n",
            "8\n",
            "1\n",
            "5\n",
            "6\n",
            "3\n"
          ]
        }
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "binary_mask = np.where(array2D % 2 == 0, True, False)\n",
        "print(binary_mask)"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "1Q08xYxlQ_fm",
        "outputId": "094c760b-01d9-434e-b42e-2c545475fb2d"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "[[False  True False]\n",
            " [ True  True False]\n",
            " [False  True False]]\n"
          ]
        }
      ]
    }
  ]
}