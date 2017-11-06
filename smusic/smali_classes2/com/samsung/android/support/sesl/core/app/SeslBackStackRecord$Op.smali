.class final Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
.super Ljava/lang/Object;
.source "SeslBackStackRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field cmd:I

.field enterAnim:I

.field exitAnim:I

.field fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field next:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

.field popEnterAnim:I

.field popExitAnim:I

.field prev:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

.field removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
