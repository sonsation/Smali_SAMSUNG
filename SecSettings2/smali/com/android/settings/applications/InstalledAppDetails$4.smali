.class Lcom/android/settings/applications/InstalledAppDetails$4;
.super Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$4;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult(IIILjava/util/List;)V
    .locals 6
    .param p1, "standardGrantedPermissionCount"    # I
    .param p2, "requestedPermissionCount"    # I
    .param p3, "additionalGrantedPermissionCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "grantedGroupLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .line 1935
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$4;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v3}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1936
    return-void

    .line 1938
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$4;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v3}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1939
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 1941
    .local v2, "summary":Ljava/lang/CharSequence;
    if-nez p2, :cond_1

    .line 1943
    const v3, 0x7f0b198f

    .line 1942
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1959
    .local v2, "summary":Ljava/lang/CharSequence;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$4;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->-get7(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1934
    return-void

    .line 1945
    .local v2, "summary":Ljava/lang/CharSequence;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1946
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-lez p3, :cond_2

    .line 1948
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1950
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1949
    const v4, 0x7f13001d

    .line 1948
    invoke-virtual {v1, v4, p3, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1952
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 1954
    const v3, 0x7f0b198e

    .line 1953
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "summary":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1956
    .local v2, "summary":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .local v2, "summary":Ljava/lang/CharSequence;
    goto :goto_0
.end method
