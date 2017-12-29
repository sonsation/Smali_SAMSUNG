.class Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;
.super Ljava/lang/Object;
.source "SCPMHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/policy/SCPMHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideMenuItem"
.end annotation


# instance fields
.field public mHideMenuKey:Ljava/lang/String;

.field public mProjectName:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/policy/SCPMHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/policy/SCPMHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/policy/SCPMHelper;
    .param p2, "projectName"    # Ljava/lang/String;
    .param p3, "hideMenuKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->this$0:Lcom/samsung/android/settings/policy/SCPMHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object v0, p0, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mProjectName:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mHideMenuKey:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mProjectName:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Lcom/samsung/android/settings/policy/SCPMHelper$HideMenuItem;->mHideMenuKey:Ljava/lang/String;

    .line 111
    return-void
.end method
