.class Lcom/lidroid/xutils/cache/LruDiskCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_e

    monitor-exit v1

    :goto_d
    return-object v3

    :cond_e
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache;)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache;)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$4(Lcom/lidroid/xutils/cache/LruDiskCache;I)V

    :cond_26
    monitor-exit v1

    goto :goto_d

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v0
.end method