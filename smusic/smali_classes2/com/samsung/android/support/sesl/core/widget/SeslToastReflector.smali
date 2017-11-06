.class public Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector;
.super Ljava/lang/Object;
.source "SeslToastReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$BaseToastflectorImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$ToastReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$ToastReflectorImpl;

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
    .line 16
    const-class v0, Landroid/widget/Toast;

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector;->mClass:Ljava/lang/Class;

    .line 39
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$BaseToastflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$BaseToastflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$ToastReflectorImpl;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static twMakeText(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 1
    .param p0, "toast"    # Landroid/widget/Toast;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$ToastReflectorImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector$ToastReflectorImpl;->twMakeText(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
