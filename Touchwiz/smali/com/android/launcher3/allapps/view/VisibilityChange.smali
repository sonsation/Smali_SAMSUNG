.class Lcom/android/launcher3/allapps/view/VisibilityChange;
.super Ljava/lang/Object;
.source "AppsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

.field final mVisible:I


# direct methods
.method public constructor <init>(ILcom/android/launcher3/allapps/view/AppsContainer;)V
    .locals 0
    .param p1, "mVisible"    # I
    .param p2, "appsContainer"    # Lcom/android/launcher3/allapps/view/AppsContainer;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Lcom/android/launcher3/allapps/view/VisibilityChange;->mVisible:I

    .line 179
    iput-object p2, p0, Lcom/android/launcher3/allapps/view/VisibilityChange;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    .line 180
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/VisibilityChange;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget v1, p0, Lcom/android/launcher3/allapps/view/VisibilityChange;->mVisible:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    .line 185
    return-void
.end method
