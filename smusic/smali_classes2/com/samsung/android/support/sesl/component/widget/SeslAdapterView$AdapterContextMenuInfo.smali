.class public Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "SeslAdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 618
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterContextMenuInfo;->position:I

    .line 619
    iput-wide p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterContextMenuInfo;->id:J

    .line 620
    return-void
.end method
