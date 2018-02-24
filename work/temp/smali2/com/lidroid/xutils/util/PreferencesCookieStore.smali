.class public Lcom/lidroid/xutils/util/PreferencesCookieStore;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/CookieStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/util/PreferencesCookieStore$SerializableCookie;
    }
.end annotation


# static fields
.field private static final COOKIE_NAME_PREFIX:Ljava/lang/String; = "cookie_"

.field private static final COOKIE_NAME_STORE:Ljava/lang/String; = "names"

.field private static final COOKIE_PREFS:Ljava/lang/String; = "CookiePrefsFile"


# instance fields
.field private final cookiePrefs:Landroid/content/SharedPreferences;

.field private final cookies:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "CookiePrefsFile"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    const-string v2, "names"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_25
    if-lt v0, v2, :cond_30

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/util/PreferencesCookieStore;->clearExpired(Ljava/util/Date;)Z

    :cond_2f
    return-void

    :cond_30
    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cookie_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_54

    invoke-virtual {p0, v4}, Lcom/lidroid/xutils/util/PreferencesCookieStore;->decodeCookie(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;

    move-result-object v4

    if-eqz v4, :cond_54

    iget-object v5, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_25
.end method


# virtual methods
.method public addCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 7

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    iget-object v1, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "names"

    const-string v3, ","

    iget-object v4, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cookie_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/lidroid/xutils/util/PreferencesCookieStore$SerializableCookie;

    invoke-direct {v2, p0, p1}, Lcom/lidroid/xutils/util/PreferencesCookieStore$SerializableCookie;-><init>(Lcom/lidroid/xutils/util/PreferencesCookieStore;Lorg/apache/http/cookie/Cookie;)V

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/util/PreferencesCookieStore;->encodeCookie(Lcom/lidroid/xutils/util/PreferencesCookieStore$SerializableCookie;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method protected byteArrayToHexString([B)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_22

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_22
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public clear()V
    .registers 6

    iget-object v0, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "names"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cookie_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_10
.end method

.method public clearExpired(Ljava/util/Date;)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v1, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2f

    if-eqz v2, :cond_2b

    const-string v0, "names"

    const-string v1, ","

    iget-object v4, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2b
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v2

    :cond_2f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-interface {v0, p1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_4d
    iget-object v0, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cookie_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x1

    move v2, v0

    goto :goto_12
.end method

.method protected decodeCookie(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/util/PreferencesCookieStore;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    :try_start_a
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/util/PreferencesCookieStore$SerializableCookie;

    invoke-virtual {v0}, Lcom/lidroid/xutils/util/PreferencesCookieStore$SerializableCookie;->getCookie()Lorg/apache/http/cookie/Cookie;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_1a

    move-result-object v0

    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_19
.end method

.method protected encodeCookie(Lcom/lidroid/xutils/util/PreferencesCookieStore$SerializableCookie;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_d} :catch_16

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/util/PreferencesCookieStore;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getCookie(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    return-object v0
.end method

.method public getCookies()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lidroid/xutils/util/PreferencesCookieStore;->cookies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected hexStringToByteArray(Ljava/lang/String;)[B
    .registers 9

    const/16 v6, 0x10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_b
    if-lt v0, v1, :cond_e

    return-object v2

    :cond_e
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_b
.end method