.class public final Lcom/alipay/sdk/app/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/sdk/app/a/c;


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/alipay/sdk/app/a/a;->a:Lcom/alipay/sdk/app/a/c;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/alipay/sdk/app/a/c;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/sdk/app/a/a;->a:Lcom/alipay/sdk/app/a/c;

    goto :goto_4
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v1, 0x0

    const-class v3, Lcom/alipay/sdk/app/a/a;

    monitor-enter v3

    :try_start_6
    sget-object v2, Lcom/alipay/sdk/app/a/a;->a:Lcom/alipay/sdk/app/a/c;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_29

    if-nez v2, :cond_c

    :goto_a
    monitor-exit v3

    return-void

    :cond_c
    :try_start_c
    sget-object v4, Lcom/alipay/sdk/app/a/a;->a:Lcom/alipay/sdk/app/a/c;

    iget-object v2, v4, Lcom/alipay/sdk/app/a/c;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v0, ""

    :goto_18
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/sdk/app/a/b;

    invoke-direct {v2, p0, v0}, Lcom/alipay/sdk/app/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/app/a/a;->a:Lcom/alipay/sdk/app/a/c;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_29

    goto :goto_a

    :catchall_29
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2c
    :try_start_2c
    const-string v2, "&"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8c

    array-length v6, v5

    move v2, v1

    move-object v1, v0

    :goto_37
    if-ge v2, v6, :cond_8d

    aget-object v7, v5, v2

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5b

    array-length v8, v7

    if-ne v8, v10, :cond_5b

    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "partner"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v8, "\""

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_5e
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "out_trade_no"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_75

    const/4 v1, 0x1

    aget-object v1, v7, v1

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5b

    :cond_75
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "trade_no"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5b

    const/4 v0, 0x1

    aget-object v0, v7, v0

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    :cond_8c
    move-object v1, v0

    :cond_8d
    invoke-static {v0}, Lcom/alipay/sdk/app/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/alipay/sdk/app/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/app/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "%s,%s,-,%s,-,-,-"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/sdk/app/a/c;->b:Ljava/lang/String;

    const-string v0, "[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, v4, Lcom/alipay/sdk/app/a/c;->a:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v4, Lcom/alipay/sdk/app/a/c;->b:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x2

    iget-object v5, v4, Lcom/alipay/sdk/app/a/c;->c:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, v4, Lcom/alipay/sdk/app/a/c;->d:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x4

    iget-object v5, v4, Lcom/alipay/sdk/app/a/c;->e:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x5

    iget-object v5, v4, Lcom/alipay/sdk/app/a/c;->f:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x6

    iget-object v5, v4, Lcom/alipay/sdk/app/a/c;->g:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x7

    iget-object v5, v4, Lcom/alipay/sdk/app/a/c;->h:Ljava/lang/String;

    aput-object v5, v1, v2

    const/16 v2, 0x8

    iget-object v5, v4, Lcom/alipay/sdk/app/a/c;->i:Ljava/lang/String;

    aput-object v5, v1, v2

    const/16 v2, 0x9

    iget-object v4, v4, Lcom/alipay/sdk/app/a/c;->j:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_ea
    .catchall {:try_start_2c .. :try_end_ea} :catchall_29

    move-result-object v0

    goto/16 :goto_18
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/alipay/sdk/app/a/a;->a:Lcom/alipay/sdk/app/a/c;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/alipay/sdk/app/a/a;->a:Lcom/alipay/sdk/app/a/c;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/sdk/app/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/alipay/sdk/app/a/a;->a:Lcom/alipay/sdk/app/a/c;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/alipay/sdk/app/a/a;->a:Lcom/alipay/sdk/app/a/c;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/sdk/app/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/alipay/sdk/app/a/a;->a:Lcom/alipay/sdk/app/a/c;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/sdk/app/a/a;->a:Lcom/alipay/sdk/app/a/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/alipay/sdk/app/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method