.class public Lcom/samsung/android/settings/guide/WifiHelpPage;
.super Landroid/app/Fragment;
.source "WifiHelpPage.java"


# instance fields
.field protected isClicked:Z

.field private mActivity:Landroid/app/Activity;

.field private mButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiHelpPage;->isClicked:Z

    .line 39
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiHelpPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiHelpPage;->mActivity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v0, 0x7f0403b6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiHelpPage;->mView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiHelpPage;->mView:Landroid/view/View;

    const v1, 0x7f1101a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiHelpPage;->mButton:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiHelpPage;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/guide/WifiHelpPage$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/guide/WifiHelpPage$1;-><init>(Lcom/samsung/android/settings/guide/WifiHelpPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiHelpPage;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 119
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiHelpPage;->isClicked:Z

    .line 107
    return-void
.end method
