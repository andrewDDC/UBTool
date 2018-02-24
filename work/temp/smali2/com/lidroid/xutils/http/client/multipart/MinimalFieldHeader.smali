.class Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/lidroid/xutils/http/client/multipart/MinimalField;",
        ">;"
    }
.end annotation


# instance fields
.field private final fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lidroid/xutils/http/client/multipart/MinimalField;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lidroid/xutils/http/client/multipart/MinimalField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fields:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fieldMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fieldMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fieldMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getField(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/multipart/MinimalField;
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fieldMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/http/client/multipart/MinimalField;

    goto :goto_4

    :cond_23
    move-object v0, v1

    goto :goto_4
.end method

.method public getFields()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lidroid/xutils/http/client/multipart/MinimalField;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lidroid/xutils/http/client/multipart/MinimalField;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fieldMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_1f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_3
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/lidroid/xutils/http/client/multipart/MinimalField;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeFields(Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fieldMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1b
    move v0, v1

    goto :goto_4

    :cond_1d
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4
.end method

.method public setField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;)V
    .registers 8

    const/4 v3, -0x1

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fieldMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_1e
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->addField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;)V

    goto :goto_3

    :cond_22
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v3

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fields:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_3d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/http/client/multipart/MinimalField;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    if-ne v2, v3, :cond_57

    move v2, v1

    :cond_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->fields:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method