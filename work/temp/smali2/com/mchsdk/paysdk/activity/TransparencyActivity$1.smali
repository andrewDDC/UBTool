.class Lcom/mchsdk/paysdk/activity/TransparencyActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/TransparencyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/TransparencyActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/TransparencyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/TransparencyActivity$1;->a:Lcom/mchsdk/paysdk/activity/TransparencyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/TransparencyActivity$1;->a:Lcom/mchsdk/paysdk/activity/TransparencyActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->finish()V

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x57
        :pswitch_6
    .end packed-switch
.end method