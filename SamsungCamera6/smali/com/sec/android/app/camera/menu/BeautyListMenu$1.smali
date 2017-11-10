.class Lcom/sec/android/app/camera/menu/BeautyListMenu$1;
.super Ljava/lang/Object;
.source "BeautyListMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/BeautyListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->hideShapeCorrectionHelpText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$002(Lcom/sec/android/app/camera/menu/BeautyListMenu;Z)Z

    return-void
.end method
