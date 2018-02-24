.class public abstract Lcom/lidroid/xutils/task/PriorityAsyncTask;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lidroid/xutils/task/TaskHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;,
        Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;,
        Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lidroid/xutils/task/TaskHandler;"
    }
.end annotation


# static fields
.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mExecuteInvoked:Z

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/lidroid/xutils/task/Priority;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;-><init>(Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;)V

    sput-object v0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->sHandler:Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;

    new-instance v0, Lcom/lidroid/xutils/task/PriorityExecutor;

    invoke-direct {v0}, Lcom/lidroid/xutils/task/PriorityExecutor;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mExecuteInvoked:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask$1;-><init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;)V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mWorker:Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;

    new-instance v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mWorker:Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;-><init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/lidroid/xutils/task/PriorityAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/lidroid/xutils/task/Priority;->DEFAULT:Lcom/lidroid/xutils/task/Priority;

    invoke-static {p0, v0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->execute(Ljava/lang/Runnable;Lcom/lidroid/xutils/task/Priority;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Lcom/lidroid/xutils/task/Priority;)V
    .registers 4

    sget-object v0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/lidroid/xutils/task/PriorityRunnable;

    invoke-direct {v1, p1, p0}, Lcom/lidroid/xutils/task/PriorityRunnable;-><init>(Lcom/lidroid/xutils/task/Priority;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->onCancelled(Ljava/lang/Object;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    const/4 v4, 0x1

    sget-object v0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->sHandler:Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;

    new-instance v1, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;-><init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->cancel(Z)Z

    return-void
.end method

.method public final cancel(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/lidroid/xutils/task/PriorityAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/lidroid/xutils/task/PriorityAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mExecuteInvoked:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mExecuteInvoked:Z

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mWorker:Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    new-instance v0, Lcom/lidroid/xutils/task/PriorityRunnable;

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->priority:Lcom/lidroid/xutils/task/Priority;

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1, v2}, Lcom/lidroid/xutils/task/PriorityRunnable;-><init>(Lcom/lidroid/xutils/task/Priority;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/lidroid/xutils/task/Priority;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->priority:Lcom/lidroid/xutils/task/Priority;

    return-object v0
.end method

.method public final isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onCancelled()V
    .registers 1

    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->sHandler:Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;-><init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_15
    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setPriority(Lcom/lidroid/xutils/task/Priority;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->priority:Lcom/lidroid/xutils/task/Priority;

    return-void
.end method

.method public supportCancel()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public supportPause()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public supportResume()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method