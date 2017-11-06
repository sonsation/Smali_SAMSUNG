.class Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$Api24HapticFeedbackConstantsReflectorImpl;
.super Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$BaseHapticFeedbackConstantsReflectorImpl;
.source "SeslHapticFeedbackConstantsReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24HapticFeedbackConstantsReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$BaseHapticFeedbackConstantsReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$Api24HapticFeedbackConstantsReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_VIBE_COMMON_A()I
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SEM_VIBE_COMMON_A"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 41
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 42
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    .local v1, "vibe":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 44
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "vibe":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 47
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method
