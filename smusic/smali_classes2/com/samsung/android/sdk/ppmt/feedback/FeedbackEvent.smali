.class public final enum Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
.super Ljava/lang/Enum;
.source "FeedbackEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum BUSY:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum CLICKED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum CONSUMED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum DELIVER:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum DISABLE_NOTI_OPTION:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum DISAGREE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum DOWNLOADED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum DOWNLOAD_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum FC_LIMIT_OVER:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum IGNORED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum LOCALE_NOT_MATCHED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum NONE_REACTION:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum OVERCANCELRETRY:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

.field public static final enum WRONG_PUSH_PLATFORM:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "DELIVER"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DELIVER:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 7
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "DOWNLOADED"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DOWNLOADED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 8
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "CONSUMED"

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUMED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 9
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "CLICKED"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 10
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "WRONG_PUSH_PLATFORM"

    const/16 v2, -0x15

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_PUSH_PLATFORM:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 11
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "WRONG_META_DATA"

    const/4 v2, 0x5

    const/16 v3, -0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 12
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "DISAGREE"

    const/4 v2, 0x6

    const/16 v3, -0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DISAGREE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 13
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "UNSUPPORTED_CARD_TYPE"

    const/4 v2, 0x7

    const/16 v3, -0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 14
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "OVERCANCELRETRY"

    const/16 v2, 0x8

    const/16 v3, -0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->OVERCANCELRETRY:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 15
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "DOWNLOAD_FAIL"

    const/16 v2, 0x9

    const/16 v3, -0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 16
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "CONTENTS_FILE_ERROR"

    const/16 v2, 0xa

    const/16 v3, -0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 17
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "LOCALE_NOT_MATCHED"

    const/16 v2, 0xb

    const/16 v3, -0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->LOCALE_NOT_MATCHED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 18
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "CONSUME_FAIL"

    const/16 v2, 0xc

    const/16 v3, -0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 19
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "BUSY"

    const/16 v2, 0xd

    const/16 v3, -0x3d

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->BUSY:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 20
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "DISABLE_NOTI_OPTION"

    const/16 v2, 0xe

    const/16 v3, -0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DISABLE_NOTI_OPTION:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 21
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "NONE_REACTION"

    const/16 v2, 0xf

    const/16 v3, -0x46

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->NONE_REACTION:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 22
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "IGNORED"

    const/16 v2, 0x10

    const/16 v3, -0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 23
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "FC_LIMIT_OVER"

    const/16 v2, 0x11

    const/16 v3, -0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->FC_LIMIT_OVER:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 24
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "CLIENT_INTERNAL_ERROR"

    const/16 v2, 0x12

    const/16 v3, -0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 25
    new-instance v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "CUSTOM_FEEDBACK"

    const/16 v2, 0x13

    const/16 v3, 0x3e7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 5
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DELIVER:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DOWNLOADED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUMED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_PUSH_PLATFORM:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DISAGREE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->OVERCANCELRETRY:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->LOCALE_NOT_MATCHED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->BUSY:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DISABLE_NOTI_OPTION:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->NONE_REACTION:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->FC_LIMIT_OVER:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->$VALUES:[Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->value:I

    .line 31
    return-void
.end method

.method public static fromInt(I)Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 38
    const-class v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    .line 39
    .local v1, "q":Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->value()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 43
    .end local v1    # "q":Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->$VALUES:[Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->value:I

    return v0
.end method