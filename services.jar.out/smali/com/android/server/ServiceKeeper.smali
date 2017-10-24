.class public Lcom/android/server/ServiceKeeper;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ServiceKeeper.java"


# static fields
.field private static final AGENT_BRIDGE:I = 0x10

.field private static final AGENT_PROVIDER:I = 0x4

.field private static final AGENT_PROXY:I = 0x8

.field private static final AGENT_SYNCER:I = 0x2

.field private static final AUTHORIZE_POLICY_FILE:[Ljava/io/File;

.field private static CONTAINER_CALLER_IDENTIFIER:Ljava/lang/String; = null

.field private static final FILTERED_API:[Ljava/lang/String;

.field public static final GOOD_CONTAINER_VALUE:I = 0x1

.field public static final MYCONTAINER_CONTAINER_VALUE:I = 0x2

.field public static final NON_CONTAINER_TYPE:I

.field private static OPEN_METHODS_IDENTIFIER:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static isActive:Z

.field private static loadFilesLockObject:Ljava/lang/Object;

.field private static mSKLog:Lcom/android/server/SKLogger;

.field static openMethodCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static permissionsLocation:Ljava/lang/String;

.field private static serviceKeeper:Lcom/android/server/ServiceKeeper;

.field static serviceTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ServiceObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 64
    sput-object v4, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    .line 65
    sput-object v4, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 67
    sput-object v4, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 68
    const-string/jumbo v0, "ServiceKeeper"

    sput-object v0, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "_open"

    sput-object v0, Lcom/android/server/ServiceKeeper;->OPEN_METHODS_IDENTIFIER:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "_container"

    sput-object v0, Lcom/android/server/ServiceKeeper;->CONTAINER_CALLER_IDENTIFIER:Ljava/lang/String;

    .line 71
    sput-boolean v5, Lcom/android/server/ServiceKeeper;->isActive:Z

    .line 72
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "security/persona/permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ServiceKeeper;->permissionsLocation:Ljava/lang/String;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    .line 83
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "security/authorize.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 84
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "security/spota/authorize.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 85
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "etc/security/authorize.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v7

    aput-object v4, v0, v8

    .line 82
    sput-object v0, Lcom/android/server/ServiceKeeper;->AUTHORIZE_POLICY_FILE:[Ljava/io/File;

    .line 86
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "queryPhoneLookupEnterpriseForKnox"

    aput-object v1, v0, v5

    .line 87
    const-string/jumbo v1, "getProfileOwner"

    aput-object v1, v0, v6

    .line 88
    const-string/jumbo v1, "isTimaKeystoreEnabled"

    aput-object v1, v0, v7

    .line 86
    sput-object v0, Lcom/android/server/ServiceKeeper;->FILTERED_API:[Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ServiceKeeper;->loadFilesLockObject:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method public static authorizeLoadProcedure()Z
    .locals 3

    .prologue
    .line 164
    sget-object v1, Lcom/android/server/ServiceKeeper;->loadFilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    sget-object v0, Lcom/android/server/ServiceKeeper;->AUTHORIZE_POLICY_FILE:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ServiceKeeper;->loadFromAuthorizeFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 169
    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static checkForMethodAuthorization(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13
    .param p0, "mcontext"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "sEInfo"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "agentType"    # I

    .prologue
    .line 454
    sget-object v9, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    if-nez v9, :cond_0

    .line 455
    sget-object v9, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v10, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "In checkForMethodAuthorization() : ServiceTable is Null: service =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 456
    const-string/jumbo v12, " method = "

    .line 455
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 456
    const-string/jumbo v12, " agentType = "

    .line 455
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 456
    const-string/jumbo v12, " sEInfo = "

    .line 455
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 456
    const-string/jumbo v12, " packageName = "

    .line 455
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v9, 0x0

    return v9

    .line 459
    :cond_0
    sget-object v9, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v9, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    .line 465
    const/4 v9, 0x0

    return v9

    .line 467
    :cond_1
    sget-object v9, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v9, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ServiceObject;

    .line 468
    .local v8, "serviceObject":Lcom/android/server/ServiceObject;
    iget-boolean v9, v8, Lcom/android/server/ServiceObject;->isSterileService:Z

    if-eqz v9, :cond_2

    .line 474
    const/4 v9, 0x0

    return v9

    .line 476
    :cond_2
    iget-object v3, v8, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    .line 477
    .local v3, "methodsTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/server/MethodPermissionPackage;>;"
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    .line 483
    const/4 v9, 0x0

    return v9

    .line 485
    :cond_3
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MethodPermissionPackage;

    .line 486
    .local v2, "methodPermissionPackage":Lcom/android/server/MethodPermissionPackage;
    iget-boolean v9, v2, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    if-eqz v9, :cond_4

    .line 492
    const/4 v9, 0x0

    return v9

    .line 495
    :cond_4
    iget-object v9, v2, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    sget-object v10, Lcom/android/server/ServiceKeeper;->OPEN_METHODS_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 500
    const/4 v9, 0x1

    return v9

    .line 503
    :cond_5
    iget-object v9, v2, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    sget-object v10, Lcom/android/server/ServiceKeeper;->CONTAINER_CALLER_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 507
    invoke-static {p0, p1}, Lcom/android/server/ServiceKeeper;->isContainerApp(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 508
    const/4 v9, 0x1

    return v9

    .line 512
    :cond_6
    iget-object v9, v2, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 522
    const/4 v9, 0x1

    return v9

    .line 524
    :cond_7
    and-int/lit8 v9, p6, 0x2

    if-nez v9, :cond_8

    and-int/lit8 v9, p6, 0x10

    if-eqz v9, :cond_a

    .line 525
    :cond_8
    iget-object v9, v2, Lcom/android/server/MethodPermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "permittedTypeString$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 526
    .local v6, "permittedTypeString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 527
    .local v5, "permittedType":I
    and-int v9, p6, v5

    if-eqz v9, :cond_9

    .line 530
    const/4 v9, 0x1

    return v9

    .line 524
    .end local v5    # "permittedType":I
    .end local v6    # "permittedTypeString":Ljava/lang/String;
    .end local v7    # "permittedTypeString$iterator":Ljava/util/Iterator;
    :cond_a
    and-int/lit8 v9, p6, 0x8

    if-nez v9, :cond_8

    and-int/lit8 v9, p6, 0x4

    if-nez v9, :cond_8

    .line 534
    :cond_b
    iget-object v9, v2, Lcom/android/server/MethodPermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 535
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageObject;>;"
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 536
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageObject;

    .line 537
    .local v4, "packageObject":Lcom/android/server/PackageObject;
    iget-object v9, v4, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, v4, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 542
    const/4 v9, 0x1

    return v9

    .line 547
    .end local v4    # "packageObject":Lcom/android/server/PackageObject;
    :cond_d
    const/4 v9, 0x0

    return v9
.end method

.method private static checkForServiceAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "seInfo"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "agentType"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 551
    sget-object v6, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    if-nez v6, :cond_0

    .line 559
    return v7

    .line 561
    :cond_0
    sget-object v6, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v6, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 571
    return v7

    .line 573
    :cond_1
    sget-object v6, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v6, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ServiceObject;

    .line 574
    .local v5, "serviceObject":Lcom/android/server/ServiceObject;
    iget-boolean v6, v5, Lcom/android/server/ServiceObject;->isSterileService:Z

    if-eqz v6, :cond_2

    .line 577
    return v7

    .line 579
    :cond_2
    iget-object v6, v5, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v6, v6, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 582
    return v8

    .line 584
    :cond_3
    and-int/lit8 v6, p3, 0x2

    if-nez v6, :cond_4

    and-int/lit8 v6, p3, 0x10

    if-eqz v6, :cond_6

    .line 585
    :cond_4
    iget-object v6, v5, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v6, v6, Lcom/android/server/PermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "permittedTypeString$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 586
    .local v3, "permittedTypeString":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 587
    .local v2, "permittedType":I
    and-int v6, p3, v2

    if-eqz v6, :cond_5

    .line 588
    return v8

    .line 584
    .end local v2    # "permittedType":I
    .end local v3    # "permittedTypeString":Ljava/lang/String;
    .end local v4    # "permittedTypeString$iterator":Ljava/util/Iterator;
    :cond_6
    and-int/lit8 v6, p3, 0x8

    if-nez v6, :cond_4

    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_4

    .line 591
    :cond_7
    iget-object v6, v5, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v6, v6, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 592
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageObject;>;"
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 593
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageObject;

    .line 594
    .local v1, "packageObject":Lcom/android/server/PackageObject;
    iget-object v6, v1, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 597
    return v8

    .line 601
    .end local v1    # "packageObject":Lcom/android/server/PackageObject;
    :cond_9
    return v7
.end method

.method private static createAuthorizationTables(Lorg/w3c/dom/Element;)Z
    .locals 15
    .param p0, "policyElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 208
    const-string/jumbo v10, "service"

    invoke-interface {p0, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 209
    .local v8, "servicesList":Lorg/w3c/dom/NodeList;
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceTable()Ljava/util/Hashtable;

    move-result-object v10

    sput-object v10, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 210
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getOpenMethodCache()Ljava/util/HashSet;

    move-result-object v10

    sput-object v10, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 212
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_8

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v0, v10, :cond_8

    .line 214
    const/4 v9, 0x0

    .line 215
    .local v9, "singleServiceElement":Lorg/w3c/dom/Element;
    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .end local v9    # "singleServiceElement":Lorg/w3c/dom/Element;
    check-cast v9, Lorg/w3c/dom/Element;

    .line 217
    .local v9, "singleServiceElement":Lorg/w3c/dom/Element;
    new-instance v7, Lcom/android/server/ServiceObject;

    invoke-direct {v7}, Lcom/android/server/ServiceObject;-><init>()V

    .line 218
    .local v7, "serviceObject":Lcom/android/server/ServiceObject;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "name"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "serviceName":Ljava/lang/String;
    const-string/jumbo v10, "seinfo"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 222
    .local v1, "itemsWithinService":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_1

    .line 223
    iput-boolean v13, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 224
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 225
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-ne v10, v14, :cond_0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v9}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 226
    iget-object v10, v7, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v10, v10, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    const-string/jumbo v12, "value"

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 229
    .end local v2    # "j":I
    :cond_1
    const-string/jumbo v10, "package"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_3

    .line 232
    iput-boolean v13, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 233
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 234
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-ne v10, v14, :cond_2

    .line 235
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v9}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v10

    .line 234
    if-eqz v10, :cond_2

    .line 236
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "name"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "seinfo"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "packageSeinfo":Ljava/lang/String;
    new-instance v4, Lcom/android/server/PackageObject;

    invoke-direct {v4, v3, v5}, Lcom/android/server/PackageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v4, "packageObject":Lcom/android/server/PackageObject;
    iget-object v10, v7, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v10, v10, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageObject":Lcom/android/server/PackageObject;
    .end local v5    # "packageSeinfo":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 243
    .end local v2    # "j":I
    :cond_3
    const-string/jumbo v10, "agentType"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 245
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_5

    .line 246
    iput-boolean v13, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 247
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 248
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-ne v10, v14, :cond_4

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v9}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 249
    iget-object v10, v7, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v10, v10, Lcom/android/server/PermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    const-string/jumbo v12, "value"

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 252
    .end local v2    # "j":I
    :cond_5
    const-string/jumbo v10, "method"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 254
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_6

    .line 255
    iput-boolean v13, v7, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 256
    invoke-static {v1, v7, v6}, Lcom/android/server/ServiceKeeper;->processMethodsUnderService(Lorg/w3c/dom/NodeList;Lcom/android/server/ServiceObject;Ljava/lang/String;)Z

    .line 259
    :cond_6
    sget-object v10, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v10, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 263
    return v13

    .line 265
    :cond_7
    sget-object v10, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v10, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 268
    .end local v0    # "i":I
    .end local v1    # "itemsWithinService":Lorg/w3c/dom/NodeList;
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "serviceObject":Lcom/android/server/ServiceObject;
    .end local v9    # "singleServiceElement":Lorg/w3c/dom/Element;
    :cond_8
    return v14
.end method

.method public static filterAPI(Ljava/lang/String;)Z
    .locals 2
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 437
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget-object v1, Lcom/android/server/ServiceKeeper;->FILTERED_API:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 438
    sget-object v1, Lcom/android/server/ServiceKeeper;->FILTERED_API:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    const/4 v1, 0x1

    return v1

    .line 437
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static getAppinfo(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v6, 0x0

    .line 616
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne p2, v5, :cond_0

    .line 618
    return-object v6

    .line 620
    :cond_0
    const/4 v1, 0x0

    .line 621
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    .line 623
    .local v0, "aasaSeInfo":[B
    :try_start_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 624
    .local v4, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 625
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/16 v5, 0x80

    invoke-interface {v3, p1, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 626
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_1

    .line 628
    invoke-static {p0, p2, p3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 629
    const/16 v5, 0x80

    invoke-interface {v3, p1, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 630
    if-nez v1, :cond_1

    .line 635
    :cond_1
    if-eqz v1, :cond_2

    .line 636
    invoke-interface {v3, p3, p1}, Landroid/content/pm/IPackageManager;->AASA_getSEInfo(ILjava/lang/String;)[B

    move-result-object v0

    .line 638
    .end local v0    # "aasaSeInfo":[B
    :cond_2
    if-eqz v0, :cond_3

    .line 639
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "userId":I
    :cond_3
    :goto_0
    return-object v1

    .line 642
    :catch_0
    move-exception v2

    .line 643
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v6, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Exception in getAppInfo"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    sget-object v5, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v6, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception Details:pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " pkgName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " appinfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getAuthorizeFilePath([Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .param p0, "policyFiles"    # [Ljava/io/File;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 122
    const/4 v4, 0x0

    .line 123
    .local v4, "policyFile":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 124
    .local v2, "i":I
    const/4 v3, 0x3

    .line 125
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    .line 160
    .end local v4    # "policyFile":Ljava/io/FileReader;
    :cond_0
    :goto_0
    return-object v11

    .line 132
    .restart local v4    # "policyFile":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v7, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Authorize file not found in location "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p0, v2

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_0
    if-eqz p0, :cond_0

    aget-object v6, p0, v2

    if-eqz v6, :cond_0

    .line 129
    :try_start_0
    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    .local v0, "authorizeFile":Ljava/lang/String;
    return-object v0

    .line 143
    .end local v0    # "authorizeFile":Ljava/lang/String;
    :pswitch_1
    const/4 v6, 0x2

    :try_start_1
    aget-object v6, p0, v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0    # "authorizeFile":Ljava/lang/String;
    new-instance v5, Ljava/io/FileReader;

    const/4 v6, 0x2

    aget-object v6, p0, v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .local v5, "policyFile":Ljava/io/FileReader;
    if-eqz v5, :cond_1

    .line 147
    .end local v4    # "policyFile":Ljava/io/FileReader;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 148
    return-object v0

    :cond_1
    move-object v4, v5

    .line 154
    .end local v0    # "authorizeFile":Ljava/lang/String;
    .end local v5    # "policyFile":Ljava/io/FileReader;
    :goto_1
    const/4 v6, 0x2

    :try_start_3
    aget-object v6, p0, v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 155
    .restart local v0    # "authorizeFile":Ljava/lang/String;
    return-object v0

    .line 150
    .end local v0    # "authorizeFile":Ljava/lang/String;
    .restart local v4    # "policyFile":Ljava/io/FileReader;
    :catch_1
    move-exception v1

    .line 151
    .end local v4    # "policyFile":Ljava/io/FileReader;
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v6, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v7, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Authorize file not found in location "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p0, v10

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 157
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v7, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Authorize file not found in location "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p0, v10

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "authorizeFile":Ljava/lang/String;
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "policyFile":Ljava/io/FileReader;
    .local v4, "policyFile":Ljava/io/FileReader;
    goto :goto_2

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getOpenMethodCache()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v1, Lcom/android/server/ServiceKeeper;

    monitor-enter v1

    .line 109
    :try_start_0
    sget-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 111
    :cond_0
    sget-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPackageName(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 665
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 667
    const-string/jumbo v2, "android"

    return-object v2

    .line 670
    :cond_0
    const/4 v1, 0x0

    .line 672
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 677
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 673
    .restart local v1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Exception in getPackageName"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getRelevantContainerType(Ljava/lang/String;)I
    .locals 1
    .param p0, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 605
    const-string/jumbo v0, "gsd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "good_trustonicpartner"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 607
    :cond_1
    const-string/jumbo v0, "mycontainer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    const/4 v0, 0x2

    return v0

    .line 611
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized getServiceKeeper()Lcom/android/server/ServiceKeeper;
    .locals 2

    .prologue
    const-class v1, Lcom/android/server/ServiceKeeper;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/server/ServiceKeeper;

    invoke-direct {v0}, Lcom/android/server/ServiceKeeper;-><init>()V

    sput-object v0, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    .line 97
    :cond_0
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getServiceTable()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ServiceObject;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v1, Lcom/android/server/ServiceKeeper;

    monitor-enter v1

    .line 115
    :try_start_0
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 117
    :cond_0
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getagenttype(Landroid/content/pm/ApplicationInfo;II)I
    .locals 2
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    .line 652
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 654
    return v1

    .line 656
    :cond_0
    if-nez p0, :cond_1

    .line 658
    return v1

    .line 661
    :cond_1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->agentType:I

    return v0
.end method

.method public static isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I
    .locals 28
    .param p0, "mcontext"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "Service"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;

    .prologue
    .line 336
    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 337
    :cond_0
    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "In isAuthorized() : service is null or method is null"

    invoke-virtual {v4, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v4, -0x1

    return v4

    .line 341
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    .line 342
    const/4 v4, 0x0

    return v4

    .line 344
    :cond_2
    sget-object v4, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 346
    const-string/jumbo v4, "_open"

    invoke-static {v4}, Lcom/android/server/ServiceKeeper;->getRelevantContainerType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 348
    :catch_0
    move-exception v20

    .line 349
    .local v20, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in getting from openCache"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v4, v9, v10, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/server/SEAMService;->isBootComplete()Z

    move-result v19

    .line 354
    .local v19, "bootCompleted":Z
    if-nez v19, :cond_4

    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    .line 356
    const/4 v4, 0x0

    return v4

    .line 358
    .end local v19    # "bootCompleted":Z
    :catch_1
    move-exception v20

    .line 359
    .restart local v20    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in processing bootComplete check"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v4, v9, v10, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_4
    const/16 v18, 0x0

    .line 362
    .local v18, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    .line 363
    .local v6, "seInfo":Ljava/lang/String;
    const/4 v7, 0x0

    .line 364
    .local v7, "pkgName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 365
    .local v8, "agentType":I
    const/16 v23, 0x0

    .line 366
    .local v23, "isNoAudit":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 368
    .local v26, "origId":J
    invoke-static/range {p0 .. p2}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, "pkgName":Ljava/lang/String;
    if-nez v7, :cond_5

    .line 370
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 371
    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "In isAuthorized() : Package Name returned null : Returning -1 : : Exiting : service =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 372
    const-string/jumbo v11, " method = "

    .line 371
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 372
    const-string/jumbo v11, " uid = "

    .line 371
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 372
    const-string/jumbo v11, "pid = "

    .line 371
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v4, -0x1

    return v4

    .line 376
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v7, v1, v2}, Lcom/android/server/ServiceKeeper;->getAppinfo(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    .line 377
    .local v18, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 379
    .end local v6    # "seInfo":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, ":"

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 380
    const-string/jumbo v4, ":"

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 382
    .local v24, "orgSeinfo":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v6, v24, v4

    .line 384
    .end local v24    # "orgSeinfo":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/server/ServiceKeeper;->getagenttype(Landroid/content/pm/ApplicationInfo;II)I

    move-result v8

    .line 385
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 387
    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v0, v6, v7, v8}, Lcom/android/server/ServiceKeeper;->checkForServiceAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 388
    if-eqz v6, :cond_8

    .line 389
    invoke-static {v6}, Lcom/android/server/ServiceKeeper;->getRelevantContainerType(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v5

    .line 394
    .local v5, "retContainerType":I
    :try_start_3
    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    move/from16 v9, p2

    move/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/SKLogger;->log(ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 399
    :goto_1
    return v5

    .line 377
    .end local v5    # "retContainerType":I
    .restart local v6    # "seInfo":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    goto :goto_0

    .line 395
    .end local v6    # "seInfo":Ljava/lang/String;
    .restart local v5    # "retContainerType":I
    :catch_2
    move-exception v21

    .line 396
    .local v21, "e":Ljava/lang/NullPointerException;
    :try_start_4
    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Could not log SKPolicy activity due to NULL pointer."

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v10, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v4

    sput-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 420
    .end local v5    # "retContainerType":I
    .end local v21    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v22

    .line 421
    .local v22, "e1":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Exception in is Authorized"

    move-object/from16 v0, v22

    invoke-virtual {v4, v9, v10, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    .end local v22    # "e1":Ljava/lang/Exception;
    :cond_8
    :try_start_5
    sget-object v9, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    const/4 v10, -0x1

    move-object v11, v6

    move-object v12, v7

    move v13, v8

    move/from16 v14, p2

    move/from16 v15, p1

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/SKLogger;->log(ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    .line 429
    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/android/server/ServiceKeeper;->filterAPI(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 430
    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "In isAuthorized() : No match found : Returning -1 : : Exiting : service =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 431
    const-string/jumbo v11, " method = "

    .line 430
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 431
    const-string/jumbo v11, " uid = "

    .line 430
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 431
    const-string/jumbo v11, "pid = "

    .line 430
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 431
    const-string/jumbo v11, "pkgName = "

    .line 430
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_9
    const/4 v4, -0x1

    return v4

    :cond_a
    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object v12, v6

    move-object v13, v7

    move-object/from16 v14, p4

    move v15, v8

    .line 401
    :try_start_6
    invoke-static/range {v9 .. v15}, Lcom/android/server/ServiceKeeper;->checkForMethodAuthorization(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 402
    if-eqz v6, :cond_8

    .line 403
    invoke-static {v6}, Lcom/android/server/ServiceKeeper;->getRelevantContainerType(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v5

    .line 412
    .restart local v5    # "retContainerType":I
    :try_start_7
    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    move/from16 v9, p2

    move/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/SKLogger;->log(ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 417
    :goto_3
    return v5

    .line 413
    :catch_4
    move-exception v21

    .line 414
    .restart local v21    # "e":Ljava/lang/NullPointerException;
    :try_start_8
    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Could not log SKPolicy activity due to NULL pointer."

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v10, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v4

    sput-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 425
    .end local v5    # "retContainerType":I
    .end local v21    # "e":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v21

    .line 426
    .restart local v21    # "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Could not log SKPolicy activity due to NULL pointer."

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v10, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v4

    sput-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    goto/16 :goto_2
.end method

.method public static isContainerApp(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "mcontext"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    .line 321
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 322
    .local v2, "userId":I
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    .line 323
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    const/4 v3, 0x1

    return v3

    .line 326
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    .end local v2    # "userId":I
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in isContainerApp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public static isTableActive()Z
    .locals 1

    .prologue
    .line 446
    sget-boolean v0, Lcom/android/server/ServiceKeeper;->isActive:Z

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x0

    return v0

    .line 450
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static loadFromAuthorizeFile(Ljava/lang/String;)Z
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 174
    if-eqz p0, :cond_0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 177
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 180
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v8, "xmlFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 183
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 184
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Element;->normalize()V

    .line 186
    const-string/jumbo v9, "policy"

    invoke-interface {v2, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 187
    .local v7, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .line 188
    .local v6, "policyElement":Lorg/w3c/dom/Element;
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .end local v6    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v6, Lorg/w3c/dom/Element;

    .line 190
    .local v6, "policyElement":Lorg/w3c/dom/Element;
    invoke-static {v6}, Lcom/android/server/ServiceKeeper;->createAuthorizationTables(Lorg/w3c/dom/Element;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_1

    .line 191
    return v12

    .line 175
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "policyElement":Lorg/w3c/dom/Element;
    .end local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v8    # "xmlFile":Ljava/io/File;
    :cond_0
    return v12

    .line 199
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "xmlFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 200
    .local v5, "e3":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v10, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "IOException"

    invoke-virtual {v9, v10, v11, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    return v12

    .line 196
    .end local v5    # "e3":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 197
    .local v4, "e2":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v9, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v10, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "ParserConfigurationException"

    invoke-virtual {v9, v10, v11, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    return v12

    .line 193
    .end local v4    # "e2":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v3

    .line 194
    .local v3, "e1":Lorg/xml/sax/SAXException;
    sget-object v9, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v10, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "SAXException"

    invoke-virtual {v9, v10, v11, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    return v12

    .line 203
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    :cond_1
    sput-boolean v10, Lcom/android/server/ServiceKeeper;->isActive:Z

    .line 204
    return v10
.end method

.method private static processMethodsUnderService(Lorg/w3c/dom/NodeList;Lcom/android/server/ServiceObject;Ljava/lang/String;)Z
    .locals 13
    .param p0, "methodsWithinService"    # Lorg/w3c/dom/NodeList;
    .param p1, "serviceObject"    # Lcom/android/server/ServiceObject;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 274
    const/4 v8, 0x0

    .line 275
    .local v8, "singleMethodElement":Lorg/w3c/dom/Element;
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .end local v8    # "singleMethodElement":Lorg/w3c/dom/Element;
    check-cast v8, Lorg/w3c/dom/Element;

    .line 277
    .local v8, "singleMethodElement":Lorg/w3c/dom/Element;
    new-instance v7, Lcom/android/server/MethodPermissionPackage;

    invoke-direct {v7}, Lcom/android/server/MethodPermissionPackage;-><init>()V

    .line 278
    .local v7, "permissionPackage":Lcom/android/server/MethodPermissionPackage;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "name"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "methodName":Ljava/lang/String;
    const-string/jumbo v9, "seinfo"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 281
    .local v1, "itemsWithinMethod":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lez v9, :cond_1

    .line 282
    iput-boolean v12, v7, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 283
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 284
    iget-object v9, v7, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "value"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "_open"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 287
    sget-object v9, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    .end local v2    # "j":I
    :cond_1
    const-string/jumbo v9, "package"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 292
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lez v9, :cond_2

    .line 293
    iput-boolean v12, v7, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 294
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 295
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "name"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "seinfo"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "packageSeinfo":Ljava/lang/String;
    new-instance v5, Lcom/android/server/PackageObject;

    invoke-direct {v5, v4, v6}, Lcom/android/server/PackageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .local v5, "packageObject":Lcom/android/server/PackageObject;
    iget-object v9, v7, Lcom/android/server/MethodPermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 301
    .end local v2    # "j":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "packageObject":Lcom/android/server/PackageObject;
    .end local v6    # "packageSeinfo":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "agentType"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 302
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lez v9, :cond_3

    .line 303
    iput-boolean v12, v7, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 304
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 305
    iget-object v9, v7, Lcom/android/server/MethodPermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 308
    .end local v2    # "j":I
    :cond_3
    iget-object v9, p1, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    invoke-virtual {v9, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 312
    return v12

    .line 314
    :cond_4
    iget-object v9, p1, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    invoke-virtual {v9, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 316
    .end local v1    # "itemsWithinMethod":Lorg/w3c/dom/NodeList;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v7    # "permissionPackage":Lcom/android/server/MethodPermissionPackage;
    .end local v8    # "singleMethodElement":Lorg/w3c/dom/Element;
    :cond_5
    const/4 v9, 0x1

    return v9
.end method
