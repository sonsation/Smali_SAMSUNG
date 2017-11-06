.class public Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector;
.super Ljava/lang/Object;
.source "SeslMultiSelectionReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$BaseMultiSelectionReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$MultiSelectionReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$MultiSelectionReflectorImpl;

.field private static final mClassName:Ljava/lang/String; = "android.text.MultiSelection"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$BaseMultiSelectionReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$BaseMultiSelectionReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector;->IMPL:Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$MultiSelectionReflectorImpl;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNeedToScroll()Z
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector;->IMPL:Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$MultiSelectionReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector$MultiSelectionReflectorImpl;->isNeedToScroll()Z

    move-result v0

    return v0
.end method
