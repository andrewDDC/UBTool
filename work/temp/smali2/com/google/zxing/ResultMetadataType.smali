.class public final enum Lcom/google/zxing/ResultMetadataType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/ResultMetadataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/ResultMetadataType;

.field public static final enum b:Lcom/google/zxing/ResultMetadataType;

.field public static final enum c:Lcom/google/zxing/ResultMetadataType;

.field public static final enum d:Lcom/google/zxing/ResultMetadataType;

.field public static final enum e:Lcom/google/zxing/ResultMetadataType;

.field public static final enum f:Lcom/google/zxing/ResultMetadataType;

.field public static final enum g:Lcom/google/zxing/ResultMetadataType;

.field public static final enum h:Lcom/google/zxing/ResultMetadataType;

.field public static final enum i:Lcom/google/zxing/ResultMetadataType;

.field public static final enum j:Lcom/google/zxing/ResultMetadataType;

.field public static final enum k:Lcom/google/zxing/ResultMetadataType;

.field private static final synthetic l:[Lcom/google/zxing/ResultMetadataType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->a:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "ORIENTATION"

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->b:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "BYTE_SEGMENTS"

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->c:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "ERROR_CORRECTION_LEVEL"

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->d:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "ISSUE_NUMBER"

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->e:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "SUGGESTED_PRICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->f:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "POSSIBLE_COUNTRY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->g:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "UPC_EAN_EXTENSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->h:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "PDF417_EXTRA_METADATA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->i:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "STRUCTURED_APPEND_SEQUENCE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->j:Lcom/google/zxing/ResultMetadataType;

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "STRUCTURED_APPEND_PARITY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->k:Lcom/google/zxing/ResultMetadataType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/zxing/ResultMetadataType;

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->a:Lcom/google/zxing/ResultMetadataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->b:Lcom/google/zxing/ResultMetadataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->c:Lcom/google/zxing/ResultMetadataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->d:Lcom/google/zxing/ResultMetadataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->e:Lcom/google/zxing/ResultMetadataType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->f:Lcom/google/zxing/ResultMetadataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->g:Lcom/google/zxing/ResultMetadataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->h:Lcom/google/zxing/ResultMetadataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->i:Lcom/google/zxing/ResultMetadataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->j:Lcom/google/zxing/ResultMetadataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->k:Lcom/google/zxing/ResultMetadataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->l:[Lcom/google/zxing/ResultMetadataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/ResultMetadataType;
    .registers 2

    const-class v0, Lcom/google/zxing/ResultMetadataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultMetadataType;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/ResultMetadataType;
    .registers 1

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->l:[Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0}, [Lcom/google/zxing/ResultMetadataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/ResultMetadataType;

    return-object v0
.end method