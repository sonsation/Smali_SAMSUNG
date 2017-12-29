.class Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomViewHolder"
.end annotation


# instance fields
.field private final mLocaleDragCell:Lcom/samsung/android/settings/localepicker/LocaleDragCell;

.field final synthetic this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    check-cast p2, Lcom/samsung/android/settings/localepicker/LocaleDragCell;

    .end local p2    # "view":Landroid/view/View;
    iput-object p2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->mLocaleDragCell:Lcom/samsung/android/settings/localepicker/LocaleDragCell;

    .line 71
    return-void
.end method


# virtual methods
.method public getLocaleDragCell()Lcom/samsung/android/settings/localepicker/LocaleDragCell;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->mLocaleDragCell:Lcom/samsung/android/settings/localepicker/LocaleDragCell;

    return-object v0
.end method
