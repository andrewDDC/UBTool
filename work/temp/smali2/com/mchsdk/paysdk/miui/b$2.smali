.class Lcom/mchsdk/paysdk/miui/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/miui/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/miui/b;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/miui/b;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/miui/b$2;->a:Lcom/mchsdk/paysdk/miui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/miui/b$2;->a:Lcom/mchsdk/paysdk/miui/b;

    iget-object v0, v0, Lcom/mchsdk/paysdk/miui/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mchsdk/paysdk/miui/a;->c(Landroid/content/Context;)V

    return-void
.end method