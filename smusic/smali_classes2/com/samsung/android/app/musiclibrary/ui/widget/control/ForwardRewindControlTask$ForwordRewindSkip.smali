.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwordRewindSkip;
.super Ljava/lang/Object;
.source "ForwardRewindControlTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForwordRewindSkip"
.end annotation


# static fields
.field public static final REPEAT_RATIO:I = 0x2

.field public static final TIME_VALUE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwordRewindSkip;->TIME_VALUE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7d0
        0xbb8
        0xfa0
        0x1f40
        0x3e80
    .end array-data
.end method
