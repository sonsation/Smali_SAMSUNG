.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RuntimePermissionPersistence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
    }
.end annotation


# static fields
.field private static final MAX_WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x7d0L

.field private static final WRITE_PERMISSIONS_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFingerprints:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mWriteScheduled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/Settings;
    .param p2, "lock"    # Ljava/lang/Object;

    .prologue
    .line 5438
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5419
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    .line 5424
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 5428
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5432
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 5436
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    .line 5439
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 5438
    return-void
.end method

.method private onUserRemoved(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 5644
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5646
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 5647
    .local v0, "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    goto :goto_0

    .line 5650
    .end local v0    # "sb":Lcom/android/server/pm/SettingBase;
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 5651
    .restart local v0    # "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    goto :goto_1

    .line 5655
    .end local v0    # "sb":Lcom/android/server/pm/SettingBase;
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5656
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5657
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5658
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 5642
    return-void

    .line 5655
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 5841
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 5843
    .local v6, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    .line 5844
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v6, :cond_6

    .line 5845
    :cond_1
    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    .line 5849
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5851
    const-string/jumbo v8, "name"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5852
    .local v5, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 5853
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-nez v0, :cond_2

    .line 5854
    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown permission:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5855
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 5859
    :cond_2
    const-string/jumbo v8, "granted"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5860
    .local v4, "grantedStr":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 5861
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 5863
    :goto_1
    const-string/jumbo v8, "flags"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5864
    .local v2, "flagsStr":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 5865
    const/16 v8, 0x10

    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 5867
    .local v1, "flags":I
    :goto_2
    if-eqz v3, :cond_5

    .line 5868
    invoke-virtual {p2, v0, p3}, Lcom/android/server/pm/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    .line 5870
    const/16 v8, 0xff

    .line 5869
    invoke-virtual {p2, v0, p3, v8, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto :goto_0

    .line 5860
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    .local v3, "granted":Z
    goto :goto_1

    .line 5865
    .end local v3    # "granted":Z
    .restart local v2    # "flagsStr":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "flags":I
    goto :goto_2

    .line 5873
    :cond_5
    const/16 v8, 0xff

    .line 5872
    invoke-virtual {p2, v0, p3, v8, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto/16 :goto_0

    .line 5840
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    .end local v4    # "grantedStr":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private parseRestoredRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 5806
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 5808
    .local v6, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v0, 0x1

    if-eq v7, v0, :cond_6

    .line 5809
    if-ne v7, v9, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v6, :cond_6

    .line 5810
    :cond_1
    if-eq v7, v9, :cond_0

    const/4 v0, 0x4

    if-eq v7, v0, :cond_0

    .line 5814
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "perm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5816
    const-string/jumbo v0, "name"

    invoke-interface {p1, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5817
    .local v2, "permName":Ljava/lang/String;
    const-string/jumbo v0, "true"

    .line 5818
    const-string/jumbo v1, "granted"

    invoke-interface {p1, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5817
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5820
    .local v3, "isGranted":Z
    const/4 v4, 0x0

    .line 5821
    .local v4, "permBits":I
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "set"

    invoke-interface {p1, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5822
    const/4 v4, 0x1

    .line 5824
    :cond_2
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "fixed"

    invoke-interface {p1, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5825
    or-int/lit8 v4, v4, 0x2

    .line 5827
    :cond_3
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "rou"

    invoke-interface {p1, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5828
    or-int/lit8 v4, v4, 0x8

    .line 5831
    :cond_4
    if-nez v3, :cond_5

    if-eqz v4, :cond_0

    :cond_5
    move-object v0, p0

    move-object v1, p2

    move v5, p3

    .line 5832
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V

    goto :goto_0

    .line 5805
    .end local v2    # "permName":Ljava/lang/String;
    .end local v3    # "isGranted":Z
    .end local v4    # "permBits":I
    :cond_6
    return-void
.end method

.method private parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 5758
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 5760
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    .line 5761
    if-ne v7, v12, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_7

    .line 5762
    :cond_1
    if-eq v7, v12, :cond_0

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    .line 5766
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "runtime-permissions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 5768
    const-string/jumbo v8, "fingerprint"

    invoke-interface {p1, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5769
    .local v1, "fingerprint":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v8, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5770
    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5771
    .local v0, "defaultsGranted":Z
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 5766
    .end local v0    # "defaultsGranted":Z
    .end local v1    # "fingerprint":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "pkg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 5775
    const-string/jumbo v8, "name"

    invoke-interface {p1, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5776
    .local v2, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 5777
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v5, :cond_5

    .line 5778
    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown package:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5779
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 5766
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3
    const-string/jumbo v9, "shared-user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 5786
    const-string/jumbo v8, "name"

    invoke-interface {p1, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5787
    .restart local v2    # "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/SharedUserSetting;

    .line 5788
    .local v6, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v6, :cond_6

    .line 5789
    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown shared user:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5790
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 5766
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_4
    const-string/jumbo v9, "restored-perms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5797
    const-string/jumbo v8, "packageName"

    invoke-interface {p1, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5798
    .local v4, "pkgName":Ljava/lang/String;
    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRestoredRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 5782
    .end local v4    # "pkgName":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_5
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v8

    invoke-direct {p0, p1, v8, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V

    goto/16 :goto_0

    .line 5793
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_6
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v8

    invoke-direct {p0, p1, v8, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V

    goto/16 :goto_0

    .line 5757
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_7
    return-void
.end method

.method private revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V
    .locals 6
    .param p1, "sb"    # Lcom/android/server/pm/SettingBase;
    .param p2, "userId"    # I

    .prologue
    .line 5664
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v3

    .line 5666
    .local v3, "permissionsState":Lcom/android/server/pm/PermissionsState;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v4

    .line 5665
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "permissionState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 5667
    .local v1, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 5668
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_0

    .line 5669
    invoke-virtual {v3, v0, p2}, Lcom/android/server/pm/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    .line 5671
    const/16 v4, 0xff

    const/4 v5, 0x0

    .line 5670
    invoke-virtual {v3, v0, p2, v4, v5}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto :goto_0

    .line 5663
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_1
    return-void
.end method

.method private writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const/4 v4, 0x0

    .line 5883
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "permissionState$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 5884
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5885
    const-string/jumbo v2, "name"

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5886
    const-string/jumbo v2, "granted"

    .line 5887
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 5886
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5888
    const-string/jumbo v2, "flags"

    .line 5889
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 5888
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5890
    const-string/jumbo v2, "item"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 5882
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_0
    return-void
.end method

.method private writePermissionsSync(I)V
    .locals 31
    .param p1, "userId"    # I

    .prologue
    .line 5503
    new-instance v5, Landroid/util/XmlMoreAtomicFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/pm/Settings;->-wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v5, v0}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 5506
    .local v5, "destination":Landroid/util/XmlMoreAtomicFile;
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    .line 5507
    .local v14, "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;>;"
    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    .line 5509
    .local v15, "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 5510
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 5513
    .local v10, "packageCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_1

    .line 5514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5515
    .local v11, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 5516
    .local v12, "packageSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    .line 5517
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v16

    .line 5518
    .local v16, "permissionsState":Lcom/android/server/pm/PermissionsState;
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v17

    .line 5520
    .local v17, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_0

    .line 5521
    move-object/from16 v0, v17

    invoke-virtual {v14, v11, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5513
    .end local v16    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v17    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 5526
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v24

    .line 5527
    .local v24, "sharedUserCount":I
    const/4 v8, 0x0

    :goto_1
    move/from16 v0, v24

    if-ge v8, v0, :cond_3

    .line 5528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 5529
    .local v25, "sharedUserName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/pm/SharedUserSetting;

    .line 5530
    .local v23, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v16

    .line 5531
    .restart local v16    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v17

    .line 5533
    .restart local v17    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_2

    .line 5534
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5527
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v16    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v17    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v23    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    .end local v25    # "sharedUserName":Ljava/lang/String;
    :cond_3
    monitor-exit v29

    .line 5539
    const/4 v9, 0x0

    .line 5541
    .local v9, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v9

    .line 5543
    .local v9, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v22

    .line 5544
    .local v22, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v28 .. v28}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v9, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5546
    const-string/jumbo v28, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v29, 0x1

    .line 5545
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5547
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5549
    const-string/jumbo v28, "runtime-permissions"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5552
    .local v6, "fingerprint":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 5553
    const-string/jumbo v28, "fingerprint"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5556
    :cond_4
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 5557
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_5

    .line 5558
    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5559
    .restart local v11    # "packageName":Ljava/lang/String;
    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 5560
    .local v13, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const-string/jumbo v28, "pkg"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5561
    const-string/jumbo v28, "name"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5562
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v13}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5563
    const-string/jumbo v28, "pkg"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5557
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 5509
    .end local v6    # "fingerprint":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v10    # "packageCount":I
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v24    # "sharedUserCount":I
    :catchall_0
    move-exception v28

    monitor-exit v29

    throw v28

    .line 5566
    .restart local v6    # "fingerprint":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "packageCount":I
    .restart local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v24    # "sharedUserCount":I
    :cond_5
    :try_start_2
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v24

    .line 5567
    const/4 v8, 0x0

    :goto_3
    move/from16 v0, v24

    if-ge v8, v0, :cond_6

    .line 5568
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5569
    .restart local v11    # "packageName":Ljava/lang/String;
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 5570
    .restart local v13    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const-string/jumbo v28, "shared-user"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5571
    const-string/jumbo v28, "name"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5572
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v13}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5573
    const-string/jumbo v28, "shared-user"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5567
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 5576
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    :cond_6
    const-string/jumbo v28, "runtime-permissions"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/pm/Settings;->-get0(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    if-eqz v28, :cond_d

    .line 5584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/pm/Settings;->-get0(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/ArrayMap;

    .line 5585
    .local v21, "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    if-eqz v21, :cond_d

    .line 5586
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v18

    .line 5587
    .local v18, "pkgCount":I
    const/4 v8, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v8, v0, :cond_d

    .line 5589
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/ArraySet;

    .line 5590
    .local v19, "pkgGrants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    move-result v28

    if-lez v28, :cond_c

    .line 5591
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 5592
    .local v20, "pkgName":Ljava/lang/String;
    const-string/jumbo v28, "restored-perms"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5593
    const-string/jumbo v28, "packageName"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5595
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 5596
    .local v4, "N":I
    const/16 v27, 0x0

    .local v27, "z":I
    :goto_5
    move/from16 v0, v27

    if-ge v0, v4, :cond_b

    .line 5597
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    .line 5598
    .local v7, "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    const-string/jumbo v28, "perm"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5599
    const-string/jumbo v28, "name"

    iget-object v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5601
    iget-boolean v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 5602
    const-string/jumbo v28, "granted"

    const-string/jumbo v29, "true"

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5605
    :cond_7
    iget v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_8

    .line 5606
    const-string/jumbo v28, "set"

    const-string/jumbo v29, "true"

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5608
    :cond_8
    iget v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x2

    if-eqz v28, :cond_9

    .line 5609
    const-string/jumbo v28, "fixed"

    const-string/jumbo v29, "true"

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5611
    :cond_9
    iget v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x8

    if-eqz v28, :cond_a

    .line 5612
    const-string/jumbo v28, "rou"

    const-string/jumbo v29, "true"

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5614
    :cond_a
    const-string/jumbo v28, "perm"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5596
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_5

    .line 5616
    .end local v7    # "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    :cond_b
    const-string/jumbo v28, "restored-perms"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5587
    .end local v4    # "N":I
    .end local v20    # "pkgName":Ljava/lang/String;
    .end local v27    # "z":I
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 5622
    .end local v18    # "pkgCount":I
    .end local v19    # "pkgGrants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    .end local v21    # "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    :cond_d
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 5623
    invoke-virtual {v5, v9}, Landroid/util/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 5625
    sget-object v28, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 5626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5638
    :cond_e
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5500
    .end local v6    # "fingerprint":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_6
    return-void

    .line 5629
    :catch_0
    move-exception v26

    .line 5632
    .local v26, "t":Ljava/lang/Throwable;
    :try_start_3
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to write settings, restoring backup: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 5631
    const/16 v29, 0x6

    move/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 5634
    const-string/jumbo v28, "PackageManager"

    .line 5635
    const-string/jumbo v29, "Failed to write settings, restoring backup"

    .line 5634
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5636
    invoke-virtual {v5, v9}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5638
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6

    .line 5637
    .end local v26    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v28

    .line 5638
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5637
    throw v28
.end method


# virtual methods
.method public areDefaultRuntimPermissionsGrantedLPr(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 5443
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public deleteUserRuntimePermissionsFile(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 5677
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->-wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5676
    return-void
.end method

.method public onDefaultRuntimePermissionsGrantedLPr(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 5447
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5448
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5446
    return-void
.end method

.method public readStateForUserSyncLPr(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 5681
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v7, p1}, Lcom/android/server/pm/Settings;->-wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v6

    .line 5691
    .local v6, "permissionsFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 5697
    .local v4, "permissionAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_0
    new-instance v5, Landroid/util/XmlMoreAtomicFile;

    invoke-direct {v5, v6}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5698
    .local v5, "permissionAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_1
    invoke-virtual {v5}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v4    # "permissionAtomicFile":Landroid/util/XmlMoreAtomicFile;
    move-result-object v2

    .line 5710
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 5711
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5712
    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5727
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5680
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    .line 5700
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v5    # "permissionAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v4    # "permissionAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :catch_0
    move-exception v1

    .line 5703
    .end local v4    # "permissionAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    const-string/jumbo v7, "No permissions state"

    .line 5702
    const/4 v8, 0x4

    invoke-static {v8, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 5705
    const-string/jumbo v7, "PackageManager"

    const-string/jumbo v8, "No permissions state"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5706
    return-void

    .line 5714
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "permissionAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :catch_1
    move-exception v0

    .line 5716
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 5718
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed parsing permissions file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5717
    const/4 v8, 0x6

    invoke-static {v8, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 5719
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-virtual {v7}, Lcom/android/server/pm/Settings;->resetSystemServer()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5727
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 5726
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 5727
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5726
    throw v7

    .line 5700
    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .restart local v1    # "fnfe":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "permissionAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .local v4, "permissionAtomicFile":Landroid/util/XmlMoreAtomicFile;
    goto :goto_1
.end method

.method public rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "isGranted"    # Z
    .param p4, "restoredFlagSet"    # I
    .param p5, "userId"    # I

    .prologue
    .line 5737
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v3}, Lcom/android/server/pm/Settings;->-get0(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 5738
    .local v2, "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    if-nez v2, :cond_0

    .line 5739
    new-instance v2, Landroid/util/ArrayMap;

    .end local v2    # "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 5740
    .restart local v2    # "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v3}, Lcom/android/server/pm/Settings;->-get0(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5743
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 5744
    .local v1, "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    if-nez v1, :cond_1

    .line 5745
    new-instance v1, Landroid/util/ArraySet;

    .end local v1    # "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5746
    .restart local v1    # "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5749
    :cond_1
    new-instance v0, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {v0, v3, p2, p3, p4}, Lcom/android/server/pm/Settings$RestoredPermissionGrant;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/String;ZI)V

    .line 5751
    .local v0, "grant":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5734
    return-void
.end method

.method public writePermissionsForUserAsyncLPr(I)V
    .locals 18
    .param p1, "userId"    # I

    .prologue
    .line 5469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 5471
    .local v2, "currentTimeMillis":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5472
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5475
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 5477
    .local v4, "lastNotWrittenMutationTimeMillis":J
    sub-long v10, v2, v4

    .line 5479
    .local v10, "timeSinceLastNotWrittenMutationMillis":J
    const-wide/16 v14, 0x7d0

    cmp-long v9, v10, v14

    if-ltz v9, :cond_0

    .line 5480
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 5481
    return-void

    .line 5486
    :cond_0
    const-wide/16 v14, 0x7d0

    .line 5485
    add-long/2addr v14, v4

    sub-long/2addr v14, v2

    .line 5486
    const-wide/16 v16, 0x0

    .line 5485
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 5487
    .local v6, "maxDelayMillis":J
    const-wide/16 v14, 0xc8

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 5490
    .local v12, "writeDelayMillis":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 5491
    .local v8, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5468
    .end local v4    # "lastNotWrittenMutationTimeMillis":J
    .end local v6    # "maxDelayMillis":J
    .end local v10    # "timeSinceLastNotWrittenMutationMillis":J
    .end local v12    # "writeDelayMillis":J
    :goto_0
    return-void

    .line 5493
    .end local v8    # "message":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    move/from16 v0, p1

    invoke-virtual {v9, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5494
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 5495
    .restart local v8    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0xc8

    invoke-virtual {v9, v8, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5496
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    const/4 v14, 0x1

    move/from16 v0, p1

    invoke-virtual {v9, v0, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method

.method public writePermissionsForUserSyncLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 5452
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5453
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    .line 5451
    return-void
.end method

.method public writeRuntimePermissionsForShutdown()V
    .locals 6

    .prologue
    .line 5457
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5458
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v0

    .line 5460
    .local v0, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ui$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 5461
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5462
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5457
    .end local v0    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "ui$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v2    # "ui$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 5456
    return-void
.end method
