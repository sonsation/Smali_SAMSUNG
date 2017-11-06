.class Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;
.super Ljava/lang/Object;
.source "ListMenuGroup.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/ListMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KnoxMenu"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxMenu"


# instance fields
.field private mKnoxB2BId:I

.field private mKnoxId:I

.field private mPersonalModeId:I

.field private mRemoveSecureFolderId:I

.field private mSecureFolderB2BId:I

.field private mSecureFolderId:I

.field final synthetic this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initKnoxMenuVisible(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 932
    const v1, 0x7f1205a2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 933
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 934
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 936
    :cond_0
    const v1, 0x7f1205a3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 937
    if-eqz v0, :cond_1

    .line 938
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 940
    :cond_1
    const v1, 0x7f1205a5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 941
    if-eqz v0, :cond_2

    .line 942
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 944
    :cond_2
    const v1, 0x7f1205a6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 945
    if-eqz v0, :cond_3

    .line 946
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 948
    :cond_3
    const v1, 0x7f1205a7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 949
    if-eqz v0, :cond_4

    .line 950
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 952
    :cond_4
    const v1, 0x7f1205a4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_5

    .line 954
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 956
    :cond_5
    return-void
.end method

.method private startMoveFiles(I)V
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    .line 959
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "KNOX"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 961
    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v0

    const v3, 0x7f0a00f0

    .line 960
    invoke-static {v1, v2, v0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->startMoveFiles(Landroid/app/Activity;Landroid/net/Uri;[JII)V

    .line 963
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    .line 964
    return-void
.end method

.method private updateMenuVisibleMoveOutOfSecureFolder(Landroid/view/Menu;Ljava/lang/String;I)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 975
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 976
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 983
    :goto_0
    return-void

    .line 979
    :cond_0
    if-eqz p2, :cond_1

    .line 980
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00fa

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 982
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isEnalbeMoveToPersonal(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateMenuVisibleMoveToContainer(Landroid/view/Menu;Ljava/lang/String;I)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 986
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 987
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 994
    :goto_0
    return-void

    .line 990
    :cond_0
    if-eqz p2, :cond_1

    .line 991
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00fb

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 993
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isEnableMoveToKnox(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateMenuVisibleMoveToPersonalMode(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 967
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 968
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 972
    :goto_0
    return-void

    .line 971
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isEnalbeMoveToPersonal(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMenuVisibleSecureFolderMode(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v9, 0x7f0a0180

    .line 877
    new-instance v5, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v7}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;-><init>(Landroid/content/Context;)V

    .line 878
    .local v5, "manager":Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;
    iget-object v7, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v7}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 879
    .local v4, "knoxMenuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 880
    :cond_0
    const-string v7, "KnoxMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not exist knox container"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_1
    return-void

    .line 884
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 885
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 886
    .local v3, "item":Landroid/os/Bundle;
    const-string v7, "com.sec.knox.moveto.containerType"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 887
    .local v1, "containerType":I
    const-string v7, "com.sec.knox.moveto.containerId"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 888
    .local v0, "containerId":I
    sget v7, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

    if-ne v1, v7, :cond_4

    .line 889
    iput v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->mSecureFolderId:I

    .line 890
    const-string v7, "com.sec.knox.moveto.name"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 891
    .local v6, "title":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 892
    iget-object v7, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v7}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 894
    :cond_3
    const v7, 0x7f1205a5

    invoke-direct {p0, p1, v6, v7}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->updateMenuVisibleMoveToContainer(Landroid/view/Menu;Ljava/lang/String;I)V

    .line 884
    .end local v6    # "title":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 895
    :cond_4
    sget v7, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

    if-ne v1, v7, :cond_5

    .line 897
    iput v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->mSecureFolderB2BId:I

    .line 898
    const-string v7, "com.sec.knox.moveto.name"

    .line 899
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1205a6

    .line 898
    invoke-direct {p0, p1, v7, v8}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->updateMenuVisibleMoveToContainer(Landroid/view/Menu;Ljava/lang/String;I)V

    goto :goto_1

    .line 901
    :cond_5
    sget v7, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I

    if-ne v1, v7, :cond_7

    .line 903
    iput v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->mRemoveSecureFolderId:I

    .line 904
    const-string v7, "com.sec.knox.moveto.name"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 905
    .restart local v6    # "title":Ljava/lang/String;
    if-nez v6, :cond_6

    .line 906
    iget-object v7, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v7}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 908
    :cond_6
    const v7, 0x7f1205a7

    invoke-direct {p0, p1, v6, v7}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->updateMenuVisibleMoveOutOfSecureFolder(Landroid/view/Menu;Ljava/lang/String;I)V

    goto :goto_1

    .line 910
    .end local v6    # "title":Ljava/lang/String;
    :cond_7
    sget v7, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_PERSONAL_TYPE_KNOX:I

    if-ne v1, v7, :cond_8

    .line 911
    iput v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->mPersonalModeId:I

    .line 912
    const v7, 0x7f1205a3

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->updateMenuVisibleMoveToPersonalMode(Landroid/view/Menu;I)V

    goto :goto_1

    .line 914
    :cond_8
    const-string v7, "Knox"

    const-string v8, "com.sec.knox.moveto.name"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 915
    iput v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->mKnoxId:I

    .line 916
    const-string v7, "com.sec.knox.moveto.name"

    .line 917
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1205a2

    .line 916
    invoke-direct {p0, p1, v7, v8}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->updateMenuVisibleMoveToContainer(Landroid/view/Menu;Ljava/lang/String;I)V

    goto :goto_1

    .line 920
    :cond_9
    iput v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->mKnoxB2BId:I

    .line 921
    const-string v7, "com.sec.knox.moveto.name"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 922
    .restart local v6    # "title":Ljava/lang/String;
    if-nez v6, :cond_a

    .line 923
    iget-object v7, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v7}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 925
    :cond_a
    const v7, 0x7f1205a4

    invoke-direct {p0, p1, v6, v7}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->updateMenuVisibleMoveToContainer(Landroid/view/Menu;Ljava/lang/String;I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 824
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 843
    const/4 v0, 0x1

    .line 844
    .local v0, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 870
    const/4 v0, 0x0

    .line 873
    :goto_0
    return v0

    .line 846
    :pswitch_0
    iget v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->mKnoxId:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->startMoveFiles(I)V

    .line 847
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v2, "2026"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$800(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :pswitch_1
    iget v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->mKnoxB2BId:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->startMoveFiles(I)V

    .line 851
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v2, "2026"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$800(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 854
    :pswitch_2
    iget v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->mPersonalModeId:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->startMoveFiles(I)V

    goto :goto_0

    .line 857
    :pswitch_3
    iget v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->mSecureFolderId:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->startMoveFiles(I)V

    .line 858
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v2, "2027"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$800(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :pswitch_4
    iget v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->mSecureFolderB2BId:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->startMoveFiles(I)V

    .line 863
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v2, "2027"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$800(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 867
    :pswitch_5
    iget v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->mRemoveSecureFolderId:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->startMoveFiles(I)V

    goto :goto_0

    .line 844
    :pswitch_data_0
    .packed-switch 0x7f1205a2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->initKnoxMenuVisible(Landroid/view/Menu;)V

    .line 829
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    const-string v0, "KnoxMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPrepareOptionsMenu() mHasDrmIds is true. Knox and Secure folder option does not show "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isSupportSecureFolder(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->updateMenuVisibleSecureFolderMode(Landroid/view/Menu;)V

    goto :goto_0

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a046e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1205a2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->updateMenuVisibleMoveToContainer(Landroid/view/Menu;Ljava/lang/String;I)V

    .line 837
    const v0, 0x7f1205a3

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;->updateMenuVisibleMoveToPersonalMode(Landroid/view/Menu;I)V

    goto :goto_0
.end method
