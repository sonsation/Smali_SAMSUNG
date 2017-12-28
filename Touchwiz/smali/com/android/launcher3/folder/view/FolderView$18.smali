.class Lcom/android/launcher3/folder/view/FolderView$18;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/view/FolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$18;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 1
    .param p1, "alarm"    # Lcom/android/launcher3/util/alarm/Alarm;

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$18;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    .line 1662
    return-void
.end method
