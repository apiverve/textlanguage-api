from setuptools import setup, find_packages

setup(
    name='apiverve_textlanguage',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Text Language is a language detection API that detects the language of any input string, returning the full language name and its two-letter ISO 639-1 code. Send plain text passages or short snippets to identify incoming multilingual content.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/textlanguage?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
