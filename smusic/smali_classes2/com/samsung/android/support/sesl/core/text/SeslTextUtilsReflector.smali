.class public Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector;
.super Ljava/lang/Object;
.source "SeslTextUtilsReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$Api24TextUtilsReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$BaseTextUtilsReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$TextUtilsReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$TextUtilsReflectorImpl;

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
    const/4 v1, 0x0

    .line 13
    const-class v0, Landroid/text/TextUtils;

    sput-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector;->mClass:Ljava/lang/Class;

    .line 58
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$Api24TextUtilsReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$Api24TextUtilsReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector;->IMPL:Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$TextUtilsReflectorImpl;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$BaseTextUtilsReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$BaseTextUtilsReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector;->IMPL:Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$TextUtilsReflectorImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 1
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # [C

    .prologue
    .line 74
    sget-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector;->IMPL:Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$TextUtilsReflectorImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$TextUtilsReflectorImpl;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v0

    return-object v0
.end method
