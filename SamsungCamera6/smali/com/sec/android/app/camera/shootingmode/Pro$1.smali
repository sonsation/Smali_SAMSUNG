.class Lcom/sec/android/app/camera/shootingmode/Pro$1;
.super Ljava/lang/Object;
.source "Pro.java"

# interfaces
.implements Lcom/samsung/android/glview/GLButton$ButtonPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Pro;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Pro;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonPressed(Lcom/samsung/android/glview/GLView;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$000(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$000(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    goto :goto_0
.end method
