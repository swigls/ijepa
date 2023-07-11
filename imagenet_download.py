from huggingface_hub import hf_hub_download, login

login()

hf_hub_download(
    repo_id="imagenet-1k",
    filename="data",
)