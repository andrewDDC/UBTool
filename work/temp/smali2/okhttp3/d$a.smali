.class public final Lokhttp3/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lokhttp3/d$a;->c:I

    iput v0, p0, Lokhttp3/d$a;->d:I

    iput v0, p0, Lokhttp3/d$a;->e:I

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/d$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/d$a;->a:Z

    return-object p0
.end method

.method public a(ILjava/util/concurrent/TimeUnit;)Lokhttp3/d$a;
    .registers 7

    if-gez p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxStale < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    const v0, 0x7fffffff

    :goto_2a
    iput v0, p0, Lokhttp3/d$a;->d:I

    return-object p0

    :cond_2d
    long-to-int v0, v0

    goto :goto_2a
.end method

.method public b()Lokhttp3/d$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/d$a;->f:Z

    return-object p0
.end method

.method public c()Lokhttp3/d;
    .registers 3

    new-instance v0, Lokhttp3/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/d;-><init>(Lokhttp3/d$a;Lokhttp3/d$1;)V

    return-object v0
.end method