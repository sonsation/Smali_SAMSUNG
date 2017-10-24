.class public Lcom/samsung/android/security/CCManager;
.super Ljava/lang/Object;
.source "CCManager.java"


# static fields
.field public static final AUDIT_LOG_ALERT:I = 0x1

.field public static final AUDIT_LOG_CRITICAL:I = 0x2

.field public static final AUDIT_LOG_ERROR:I = 0x3

.field public static final AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field public static final AUDIT_LOG_NOTICE:I = 0x5

.field public static final AUDIT_LOG_WARNING:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    :try_start_0
    const-string/jumbo v1, "cc_manager_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 15
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 16
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not link the library. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AuditLog(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 9
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "outcome"    # Z
    .param p2, "severity"    # I
    .param p3, "swComponent"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    const-string/jumbo v6, "android.sec.enterprise.EnterpriseDeviceManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 90
    .local v3, "clsEdm":Ljava/lang/Class;
    const-string/jumbo v6, "android.sec.enterprise.auditlog.AuditLog"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 91
    .local v0, "auditLog":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x6

    new-array v1, v6, [Ljava/lang/Class;

    .line 92
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v1, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v1, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x4

    aput-object v6, v1, v7

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x5

    aput-object v6, v1, v7

    .line 94
    .local v1, "auditParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x6

    new-array v2, v6, [Ljava/lang/Object;

    .line 95
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v2, v7

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v2, v7

    invoke-static {}, Lcom/samsung/android/security/CCManager;->getPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v2, v7

    const/4 v6, 0x4

    aput-object p3, v2, v6

    const/4 v6, 0x5

    aput-object p0, v2, v6

    .line 97
    .local v2, "auditValues":[Ljava/lang/Object;
    const-string/jumbo v6, "logPrivileged"

    invoke-virtual {v0, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 98
    .local v5, "logMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "auditLog":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "auditParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "auditValues":[Ljava/lang/Object;
    .end local v3    # "clsEdm":Ljava/lang/Class;
    .end local v5    # "logMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v4

    .line 100
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CCManager::AuditLog encountered an exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getName()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 67
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/security/CCManager;->getPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/cmdline"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v5, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v6    # "reader":Ljava/io/BufferedReader;
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v3, "fileContent":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .local v0, "c":I
    if-lez v0, :cond_2

    .line 72
    int-to-char v8, v0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 75
    .end local v0    # "c":I
    .end local v3    # "fileContent":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    move-object v6, v7

    .line 79
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 80
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 76
    :cond_1
    :goto_2
    return-object v11

    .line 74
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "c":I
    .restart local v3    # "fileContent":Ljava/lang/StringBuffer;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_4
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 79
    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 80
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 74
    :cond_4
    :goto_3
    return-object v8

    .line 81
    :catch_1
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "CCManager::getName encountered an exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 81
    .end local v0    # "c":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileContent":Ljava/lang/StringBuffer;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CCManager::getName encountered an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .local v4, "fileReader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v8

    .line 79
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 80
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 77
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    throw v8

    .line 81
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "CCManager::getName encountered an exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 75
    .local v4, "fileReader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    goto/16 :goto_1
.end method

.method public static getPid()I
    .locals 5

    .prologue
    .line 43
    :try_start_0
    const-string/jumbo v3, "android.os.Process"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 44
    .local v2, "processClass":Ljava/lang/Class;
    const-string/jumbo v4, "myPid"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 45
    .local v1, "myPidMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 46
    .end local v1    # "myPidMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const/4 v3, -0x1

    return v3
.end method

.method public static getUid()I
    .locals 5

    .prologue
    .line 54
    :try_start_0
    const-string/jumbo v3, "android.os.Process"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 55
    .local v2, "processClass":Ljava/lang/Class;
    const-string/jumbo v4, "myUid"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 56
    .local v1, "myPidMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 57
    .end local v1    # "myPidMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const/4 v3, -0x1

    return v3
.end method

.method public static native isMdfDisabled()Z
.end method

.method public static native isMdfEnabled()Z
.end method

.method public static native isMdfEnforced()Z
.end method

.method public static native isMdfReady()Z
.end method

.method public static native isMdfSupported()Z
.end method

.method public static native updateMdfStatus()I
.end method

.method public static native updateMdfVersion()Ljava/lang/String;
.end method
