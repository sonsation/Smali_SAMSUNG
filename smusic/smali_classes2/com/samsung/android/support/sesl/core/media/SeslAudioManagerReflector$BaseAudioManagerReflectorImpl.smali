.class Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$BaseAudioManagerReflectorImpl;
.super Ljava/lang/Object;
.source "SeslAudioManagerReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$AudioManagerReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseAudioManagerReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$BaseAudioManagerReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SOUND_TIME_PICKER_SCROLL()I
    .locals 4

    .prologue
    .line 24
    invoke-static {}, Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SOUND_TIME_PICKER_SCROLL"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 25
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 26
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    .local v1, "sound":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 28
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "sound":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 31
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
