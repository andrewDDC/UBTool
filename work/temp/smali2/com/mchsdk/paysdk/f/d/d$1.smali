.class Lcom/mchsdk/paysdk/f/d/d$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/d;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/http/callback/RequestCallBack",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/d;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/d;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/d$1;->a:Lcom/mchsdk/paysdk/f/d/d;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "ChangePlayerLevelRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ChangePlayerLevelRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->getExceptionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/d$1;->a:Lcom/mchsdk/paysdk/f/d/d;

    const/16 v1, 0x55

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/d;->a(Lcom/mchsdk/paysdk/f/d/d;ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0x55

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "1"

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/d$1;->a:Lcom/mchsdk/paysdk/f/d/d;

    const/16 v2, 0x56

    const-string v3, "return_msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/mchsdk/paysdk/f/d/d;->a(Lcom/mchsdk/paysdk/f/d/d;ILjava/lang/Object;)V

    :goto_26
    return-void

    :cond_27
    const-string v0, "return_msg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/d$1;->a:Lcom/mchsdk/paysdk/f/d/d;

    const/16 v1, 0x55

    const-string v2, "\u4fee\u6539\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/d;->a(Lcom/mchsdk/paysdk/f/d/d;ILjava/lang/Object;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_35} :catch_36
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_3f

    goto :goto_26

    :catch_36
    move-exception v0

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/d$1;->a:Lcom/mchsdk/paysdk/f/d/d;

    const-string v1, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    invoke-static {v0, v4, v1}, Lcom/mchsdk/paysdk/f/d/d;->a(Lcom/mchsdk/paysdk/f/d/d;ILjava/lang/Object;)V

    goto :goto_26

    :catch_3f
    move-exception v0

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/d$1;->a:Lcom/mchsdk/paysdk/f/d/d;

    const-string v1, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    invoke-static {v0, v4, v1}, Lcom/mchsdk/paysdk/f/d/d;->a(Lcom/mchsdk/paysdk/f/d/d;ILjava/lang/Object;)V

    goto :goto_26
.end method