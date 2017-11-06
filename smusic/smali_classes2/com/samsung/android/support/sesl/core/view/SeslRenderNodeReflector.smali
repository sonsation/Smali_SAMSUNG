.class public Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector;
.super Ljava/lang/Object;
.source "SeslRenderNodeReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector$BaseRenderNodeReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector$RenderNodeReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector$RenderNodeReflectorImpl;

.field private static final TAG:Ljava/lang/String; = "SeslRenderNodeReflector"

.field private static mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "android.view.RenderNode"

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector;->mClassName:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector$BaseRenderNodeReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector$BaseRenderNodeReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector$RenderNodeReflectorImpl;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public static offsetLeftAndRight(Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "renderNode"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "offset"    # I

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector$RenderNodeReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector$RenderNodeReflectorImpl;->offsetLeftAndRight(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method
