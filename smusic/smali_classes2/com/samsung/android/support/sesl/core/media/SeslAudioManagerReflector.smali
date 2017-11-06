.class public Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector;
.super Ljava/lang/Object;
.source "SeslAudioManagerReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$BaseAudioManagerReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$AudioManagerReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$AudioManagerReflectorImpl;

.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-class v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector;->mClass:Ljava/lang/Class;

    .line 37
    new-instance v0, Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$BaseAudioManagerReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$BaseAudioManagerReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector;->IMPL:Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$AudioManagerReflectorImpl;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_SOUND_TIME_PICKER_SCROLL()I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector;->IMPL:Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$AudioManagerReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector$AudioManagerReflectorImpl;->getField_SOUND_TIME_PICKER_SCROLL()I

    move-result v0

    return v0
.end method
