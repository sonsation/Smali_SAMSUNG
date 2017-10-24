.class Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMIMEIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1873
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1874
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Received Intent - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    if-nez v2, :cond_0

    .line 1876
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    const-string/jumbo v8, "failed. action is null."

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    return-void

    .line 1879
    :cond_0
    const-string/jumbo v3, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1880
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    const-string/jumbo v8, "Received - ACTION_SMIME_INSTALL_STATUS"

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.SMIME_RESULT"

    .line 1882
    const/4 v8, 0x0

    .line 1881
    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 1883
    .local v21, "status":I
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1884
    .local v6, "accId":J
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 1885
    .local v18, "resultId":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "S"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v16

    .line 1886
    .local v16, "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    if-nez v16, :cond_1

    .line 1887
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed. no registed work. id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    return-void

    .line 1891
    :cond_1
    const/4 v3, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_7

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_7

    .line 1892
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.SMIME_INSTALL_TYPE"

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 1893
    .local v20, "smime_type":I
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1894
    .local v4, "adminUid":I
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v5, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1895
    .local v5, "containerId":I
    const/16 v17, 0x0

    .line 1896
    .local v17, "ret":Z
    const/4 v3, 0x2

    move/from16 v0, v20

    if-eq v0, v3, :cond_2

    .line 1897
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_3

    .line 1898
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 1899
    const-string/jumbo v9, "ForceSmimeCertForEncryption"

    .line 1898
    const/4 v8, 0x1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap0(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v17

    .line 1900
    .local v17, "ret":Z
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    .line 1901
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate for Enryption. ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1900
    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    .end local v17    # "ret":Z
    :cond_3
    const/4 v3, 0x3

    move/from16 v0, v20

    if-eq v0, v3, :cond_4

    .line 1904
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_5

    .line 1905
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 1906
    const-string/jumbo v9, "ForceSmimeCertForSigning"

    .line 1905
    const/4 v8, 0x1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap0(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v17

    .line 1907
    .restart local v17    # "ret":Z
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    .line 1908
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate for Signing. ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1907
    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    .end local v17    # "ret":Z
    :cond_5
    if-eqz v17, :cond_6

    .line 1912
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "success to SMIME Certificate ."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    .end local v4    # "adminUid":I
    .end local v5    # "containerId":I
    .end local v6    # "accId":J
    .end local v16    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v18    # "resultId":J
    .end local v20    # "smime_type":I
    .end local v21    # "status":I
    :goto_0
    return-void

    .line 1914
    .restart local v4    # "adminUid":I
    .restart local v5    # "containerId":I
    .restart local v6    # "accId":J
    .restart local v16    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .restart local v18    # "resultId":J
    .restart local v20    # "smime_type":I
    .restart local v21    # "status":I
    :cond_6
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to SMIME Certificate ."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1917
    .end local v4    # "adminUid":I
    .end local v5    # "containerId":I
    .end local v20    # "smime_type":I
    :cond_7
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to enforce SMIME. accId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1920
    .end local v6    # "accId":J
    .end local v16    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v18    # "resultId":J
    .end local v21    # "status":I
    :cond_8
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1921
    const-string/jumbo v3, "ExchangeAccountPolicy"

    const-string/jumbo v8, "Received - ACTION_ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.SMIME_RESULT"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 1924
    .restart local v21    # "status":I
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1925
    .restart local v6    # "accId":J
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.SMIME_INSTALL_TYPE"

    const/4 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 1926
    .local v22, "type":I
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 1929
    .restart local v18    # "resultId":J
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "S"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1928
    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v16

    .line 1930
    .restart local v16    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    if-eqz v16, :cond_11

    .line 1931
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1932
    .restart local v4    # "adminUid":I
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v5, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1933
    .restart local v5    # "containerId":I
    const/4 v3, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_10

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_10

    .line 1934
    const/16 v17, 0x0

    .line 1935
    .local v17, "ret":Z
    if-nez v22, :cond_9

    .line 1936
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 1937
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 1939
    const/4 v13, 0x2

    .line 1940
    const/4 v14, 0x1

    move-wide v10, v6

    move v12, v5

    .line 1937
    invoke-static/range {v8 .. v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap1(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v17

    .line 1941
    .local v17, "ret":Z
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    .line 1942
    const-string/jumbo v8, "release SMIME Certificate for Enryption (Alias) by null."

    .line 1941
    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    .end local v17    # "ret":Z
    :cond_9
    :goto_1
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_a

    .line 1954
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 1955
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 1957
    const/4 v13, 0x3

    const/4 v14, 0x1

    move-wide v10, v6

    move v12, v5

    .line 1955
    invoke-static/range {v8 .. v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap1(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v17

    .line 1958
    .restart local v17    # "ret":Z
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    .line 1959
    const-string/jumbo v8, "release SMIME Certificate for Signing (Alias) by null."

    .line 1958
    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    .end local v17    # "ret":Z
    :cond_a
    :goto_2
    if-eqz v17, :cond_e

    .line 1969
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 1970
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    .line 1971
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "success to release SMIME Certificate (Alias) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1970
    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1995
    .end local v4    # "adminUid":I
    .end local v5    # "containerId":I
    .end local v16    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v3, v6, v7, v0, v1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap3(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;JII)V

    goto/16 :goto_0

    .line 1945
    .restart local v4    # "adminUid":I
    .restart local v5    # "containerId":I
    .restart local v16    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .local v17, "ret":Z
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 1946
    const-string/jumbo v9, "ForceSmimeCertForEncryption"

    .line 1945
    const/4 v8, 0x1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap0(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v17

    .line 1947
    .local v17, "ret":Z
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    .line 1948
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate for Enryption (Alias). ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1947
    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1991
    .end local v4    # "adminUid":I
    .end local v5    # "containerId":I
    .end local v16    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v17    # "ret":Z
    :catch_0
    move-exception v15

    .line 1992
    .local v15, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    const-string/jumbo v8, "Failed to apply SMIME Alis Policy on success."

    invoke-static {v3, v8, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1961
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v4    # "adminUid":I
    .restart local v5    # "containerId":I
    .restart local v16    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 1962
    const-string/jumbo v9, "ForceSmimeCertForSigning"

    .line 1961
    const/4 v8, 0x1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap0(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v17

    .line 1963
    .restart local v17    # "ret":Z
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    .line 1964
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate for Signing (Alias). ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1963
    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1974
    .end local v17    # "ret":Z
    :cond_d
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    .line 1975
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "success to SMIME Certificate (Alias) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1974
    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1977
    :cond_e
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 1978
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    .line 1979
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to release SMIME Certificate (Alias) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1978
    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1982
    :cond_f
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    .line 1983
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to SMIME Certificate (Alias)."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1982
    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1986
    :cond_10
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "forcing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1989
    .end local v4    # "adminUid":I
    .end local v5    # "containerId":I
    :cond_11
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate has failed. status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", accId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 1998
    .end local v6    # "accId":J
    .end local v16    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v18    # "resultId":J
    .end local v21    # "status":I
    .end local v22    # "type":I
    :cond_12
    const-string/jumbo v3, "ExchangeAccountPolicy/Receiver"

    const-string/jumbo v8, "no Defined Intent."

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
