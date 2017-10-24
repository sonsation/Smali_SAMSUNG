.class Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;
.super Landroid/app/Presentation;
.source "LoadingScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/LoadingScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalLoadingScreen"
.end annotation


# instance fields
.field final mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 2
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    .line 310
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 311
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;->mWindow:Landroid/view/Window;

    .line 312
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;->mWindow:Landroid/view/Window;

    sget v1, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 309
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 317
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;->mWindow:Landroid/view/Window;

    const/16 v1, 0x8b6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 319
    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 316
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Presentation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    const-string/jumbo v1, " display="

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    const-string/jumbo v1, " isShowing="

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    const-string/jumbo v1, "\n"

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
