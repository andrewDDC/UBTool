.class public Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/db/sqlite/Selector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OrderBy"
.end annotation


# instance fields
.field private columnName:Ljava/lang/String;

.field private desc:Z

.field final synthetic this$0:Lcom/lidroid/xutils/db/sqlite/Selector;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/db/sqlite/Selector;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->this$0:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->columnName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/db/sqlite/Selector;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->this$0:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->columnName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->desc:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->columnName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->desc:Z

    if-eqz v0, :cond_1a

    const-string v0, " DESC"

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    const-string v0, " ASC"

    goto :goto_11
.end method