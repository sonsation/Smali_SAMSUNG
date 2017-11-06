.class Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$Api24DragAndDropPermissionsCompatImpl;
.super Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;
.source "SeslDragAndDropPermissionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24DragAndDropPermissionsCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public release(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dragAndDropPermissions"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompatApi24;->release(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public request(Landroid/app/Activity;Landroid/view/DragEvent;)Ljava/lang/Object;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompatApi24;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
