.class Lcom/sec/android/app/camera/shootingmode/Beauty$1;
.super Ljava/lang/Object;
.source "Beauty.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Beauty;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Beauty;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Beauty;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Beauty$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Beauty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Beauty$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Beauty;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Beauty;->access$000(Lcom/sec/android/app/camera/shootingmode/Beauty;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v1, 0x82

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Beauty$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Beauty;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Beauty;->access$100(Lcom/sec/android/app/camera/shootingmode/Beauty;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return v2
.end method
