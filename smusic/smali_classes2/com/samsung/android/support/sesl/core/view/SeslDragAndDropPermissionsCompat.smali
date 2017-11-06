.class public final Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;
.super Ljava/lang/Object;
.source "SeslDragAndDropPermissionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$Api24DragAndDropPermissionsCompatImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;
    }
.end annotation


# static fields
.field private static IMPL:Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;


# instance fields
.field private mDragAndDropPermissions:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$Api24DragAndDropPermissionsCompatImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$Api24DragAndDropPermissionsCompatImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dragAndDropPermissions"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;->mDragAndDropPermissions:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public static request(Landroid/app/Activity;Landroid/view/DragEvent;)Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragEvent"    # Landroid/view/DragEvent;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 80
    sget-object v1, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "dragAndDropPermissions":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;-><init>(Ljava/lang/Object;)V

    .line 84
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;->mDragAndDropPermissions:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;->release(Ljava/lang/Object;)V

    .line 92
    return-void
.end method
