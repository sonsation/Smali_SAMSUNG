.class public Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;
.super Ljava/lang/Object;
.source "SeslViewReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeslMeasureSpecReflector"
.end annotation


# static fields
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
    .locals 1

    .prologue
    .line 929
    const-class v0, Landroid/view/View$MeasureSpec;

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeSafeMeasureSpec(II)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 939
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    const/4 v0, 0x1

    .line 940
    .local v0, "useZeroUnspecifiedMeasureSpec":Z
    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 943
    :goto_1
    return v1

    .end local v0    # "useZeroUnspecifiedMeasureSpec":Z
    :cond_0
    move v0, v1

    .line 939
    goto :goto_0

    .line 943
    .restart local v0    # "useZeroUnspecifiedMeasureSpec":Z
    :cond_1
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1
.end method
