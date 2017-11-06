.class synthetic Lcom/samsung/android/app/music/common/help/ContactUsHelper$1;
.super Ljava/lang/Object;
.source "ContactUsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/help/ContactUsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$music$common$help$ContactUsHelper$ContactUsFeedbackType:[I

.field static final synthetic $SwitchMap$com$samsung$android$app$music$common$help$ContactUsHelper$ContactUsUriType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;->values()[Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$1;->$SwitchMap$com$samsung$android$app$music$common$help$ContactUsHelper$ContactUsFeedbackType:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$1;->$SwitchMap$com$samsung$android$app$music$common$help$ContactUsHelper$ContactUsFeedbackType:[I

    sget-object v1, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;->ASK:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$1;->$SwitchMap$com$samsung$android$app$music$common$help$ContactUsHelper$ContactUsFeedbackType:[I

    sget-object v1, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;->ERROR:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$1;->$SwitchMap$com$samsung$android$app$music$common$help$ContactUsHelper$ContactUsFeedbackType:[I

    sget-object v1, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;->OPINION:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 99
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->values()[Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$1;->$SwitchMap$com$samsung$android$app$music$common$help$ContactUsHelper$ContactUsUriType:[I

    :try_start_3
    sget-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$1;->$SwitchMap$com$samsung$android$app$music$common$help$ContactUsHelper$ContactUsUriType:[I

    sget-object v1, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->CONTACT_US:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$1;->$SwitchMap$com$samsung$android$app$music$common$help$ContactUsHelper$ContactUsUriType:[I

    sget-object v1, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->SEND_FEEDBACK:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$1;->$SwitchMap$com$samsung$android$app$music$common$help$ContactUsHelper$ContactUsUriType:[I

    sget-object v1, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->DIRECT_FEEDBACK:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 136
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
